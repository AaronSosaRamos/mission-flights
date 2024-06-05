import vertexai
import streamlit as st
from vertexai.preview import generative_models
from vertexai.preview.generative_models import GenerativeModel, Tool, Part, Content, ChatSession
from services.flight_manager import search_flights, book_flight
import os

os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = "authentication.json"

project = "gemini-flights-425101"
vertexai.init(project = project)

# Define Tool
get_search_flights = generative_models.FunctionDeclaration(
    name="get_search_flights",
    description="Tool for searching a flight with origin, destination, and departure date.",
    parameters={
        "type": "object",
        "properties": {
            "origin": {
                "type": "string",
                "description": "The airport of departure for the flight given in airport code such as LAX, SFO, BOS, etc."
            },
            "destination": {
                "type": "string",
                "description": "The airport of destination for the flight given in airport code such as LAX, SFO, BOS, etc."
            },
            "departure_date": {
                "type": "string",
                "format": "date",
                "description": "The date of departure for the flight in YYYY-MM-DD format"
            },
        },
        "required": [
            "origin",
            "destination",
            "departure_date"
        ]
    },
)

# Define Tool for booking flights
book_flight_func = generative_models.FunctionDeclaration(
    name="book_flight_func",
    description="Tool for booking a flight using the flight number obtained from a search, along with the seat type and number of seats.",
    parameters={
        "type": "object",
        "properties": {
            "flight_number": {
                "type": "string",
                "description": "The alphanumeric flight number obtained from the flight search."
            },
            "seat_type": {
                "type": "string",
                "description": "The type of seat to book. Valid values are 'economy', 'business', or 'first_class'."
            },
            "num_seats": {
                "type": "integer",
                "description": "The number of seats to book on the flight."
            }
        },
        "required": ["flight_number", "seat_type", "num_seats"]
    }
)


# Define tool and model with tools
search_tool = generative_models.Tool(
    function_declarations=[get_search_flights, book_flight_func],
)

config = generative_models.GenerationConfig(temperature=0.4)
# Load model with config
model = GenerativeModel(
    "gemini-pro",
    tools = [search_tool],
    generation_config = config
)

# Helper function to unpack responses
def handle_response(response):
    # Check for function call with intermediate step, always return response
    if response.candidates[0].content.parts[0].function_call.args:
        # Function call exists, unpack and load into a function
        response_args = response.candidates[0].content.parts[0].function_call.args

        function_params = {}
        for key in response_args:
            value = response_args[key]
            function_params[key] = value

        if response.candidates[0].content.parts[0].function_call.name == "get_search_flights":
            print("1")
            results = search_flights(**function_params)
            if results:
                intermediate_response = chat.send_message(
                    Part.from_function_response(
                        name="get_search_flights",
                        response=results
                    )
                )

                return intermediate_response.candidates[0].content.parts[0].text
            else:
                return "Search Failed"
        
        elif response.candidates[0].content.parts[0].function_call.name == "book_flight_func":
            print("a")
            results = book_flight(**function_params)
            if results:
                intermediate_response = chat.send_message(
                    Part.from_function_response(
                        name="book_flight_func",
                        response=results
                    )
                )
                return intermediate_response.candidates[0].content.parts[0].text
            else:
                return "Booking Failed"
    else:
        # Return just text
        return response.candidates[0].content.parts[0].text

# helper function to display and send streamlit messages
def llm_function(chat: ChatSession, query):
    response = chat.send_message(query)
    output = handle_response(response)
    
    with st.chat_message("model"):
        st.markdown(output)
    
    st.session_state.messages.append(
        {
            "role": "user",
            "content": query
        }
    )
    st.session_state.messages.append(
        {
            "role": "model",
            "content": output
        }
    )

st.title("Gemini Flights")

chat = model.start_chat()

# Initialize chat history
if "messages" not in st.session_state:
    st.session_state.messages = []

# Display and load to chat history
for index, message in enumerate(st.session_state.messages):
    content = Content(
            role = message["role"],
            parts = [ Part.from_text(message["content"]) ]
        )
    
    if index != 0:
        with st.chat_message(message["role"]):
            st.markdown(message["content"])

    chat.history.append(content)

# For Initial message startup
if len(st.session_state.messages) == 0:
    # Invoke initial message
    initial_prompt = "Introduce yourself as a flights management assistant, ReX, powered by Google Gemini and designed to search/book flights. You use emojis to be interactive. For reference, the year for dates is 2024"

    llm_function(chat, initial_prompt)

# For capture user input
query = st.chat_input("Gemini Flights")

if query:
    with st.chat_message("user"):
        st.markdown(query)
    llm_function(chat, query)
