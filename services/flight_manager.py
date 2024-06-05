import random
import requests
from datetime import datetime, timedelta, time, date
from dateutil.parser import parse
from typing import Optional
from fastapi import Depends, HTTPException
from sqlalchemy import and_, func
from sqlalchemy.orm import Session
from models import Flight, FlightModel, FlightSearchCriteria, get_db
import logging

# Create a logger for this module
logger = logging.getLogger(__name__)

def generate_flight_number():
    # Example: AA342
    return f"{random.choice('ABCDEFGHIJKLMNOPQRSTUVWXYZ')}{random.choice('ABCDEFGHIJKLMNOPQRSTUVWXYZ')}{random.randint(100, 999)}"

def choose_airline():
    # Example airlines
    airlines = ['Phantom', 'DreamSky Airlines', 'VirtualJet', 'Enchanted Air', 'AeroFiction']
    return random.choice(airlines)

def calculate_times(origin, destination, flight_date):
    # Randomly generate departure time between 0 and 23 hours
    departure_hour = random.randint(0, 23)
    departure_minute = random.randint(0, 59)
    # Use flight_date instead of datetime.now()
    departure_time = datetime.combine(flight_date, datetime.min.time()).replace(hour=departure_hour, minute=departure_minute)

    # Random duration for the flight between 30 mins to 10 hours
    duration = timedelta(minutes=random.randint(30, 600))
    arrival_time = departure_time + duration

    # Extracting the arrival date
    arrival_date = arrival_time.date()

    return departure_time, arrival_time, arrival_date

def generate_flights(flight_input, num_flights, db: Session):
    flights = []
    
    for _ in range(num_flights):
        flight_number = generate_flight_number()
        airline = choose_airline()
        departure_time, arrival_time, arrival_date= calculate_times(flight_input.origin, flight_input.destination, flight_input.departure_date)
        
        open_seats_economy = random.randint(0, 200)  
        open_seats_business = random.randint(0, 50)
        open_seats_first_class = random.randint(0, 20)

        economy_seat_cost = random.randint(50, 500)  
        business_seat_cost = random.randint(500, 1500)
        first_class_cost = random.randint(1500, 3000)

        new_flight = Flight(
            flight_number =             flight_number,
            airline =                   airline,
            origin =                    flight_input.origin,
            destination =               flight_input.destination,
            
            departure_date =            flight_input.departure_date,
            arrival_date =              arrival_date,
            departure_time =            departure_time,
            arrival_time =              arrival_time,
            
            open_seats_economy =        open_seats_economy,
            open_seats_business =       open_seats_business,
            open_seats_first_class =    open_seats_first_class,
            economy_seat_cost =         economy_seat_cost,
            business_seat_cost =        business_seat_cost,
            first_class_cost =          first_class_cost
        )

        db.add(new_flight)
        db.commit()
        db.refresh(new_flight)
        logging.info(f"Successfully added flight: {new_flight.flight_number}")
        
    return flights

def handle_flight_search(criteria, db: Session, page: Optional[int] = 1, page_size: Optional[int] = 10):
    """
    Handles the search for flights based on various criteria. The function applies filters for
    origin, destination, departure date, and optionally arrival date, flight number, airline, 
    time range, and seat type with cost constraints.

    Parameters:
    - criteria: An object containing the search criteria, including origin, destination, 
      departure date, optional arrival date, flight number, airline, departure time, arrival time, 
      seat type, minimum and maximum cost.
    - db (Session): The database session used to execute the query.
    - page (Optional[int]): The page number for pagination, default is 1.
    - page_size (Optional[int]): The number of records per page for pagination, default is 10.

    The function first builds a query with basic filters such as origin, destination, and departure date. 
    Additional filters for arrival date, flight number, airline, time range, and seat type with cost 
    constraints are applied if provided in the criteria. The function handles parsing of date and time 
    strings and validates them. In case of invalid arrival date format, it logs an error and returns 
    an HTTP exception. 

    The function also handles pagination, calculating the total number of matching records and total pages.
    It checks if the requested page exceeds the total number of available pages and handles this scenario 
    by returning an appropriate message. Finally, it fetches the flights based on the applied filters and 
    pagination, converts the SQLAlchemy models to Pydantic models, and returns the search results.

    Returns:
    A dictionary containing the number of query results, a list of flight models, the current page, and 
    total number of pages.
    """
    query = db.query(Flight)
    
    departure_datetime = datetime.combine(criteria.departure_date, time.min)

    # Start building the query with basic filters
    query = query.filter(
        Flight.origin == criteria.origin,
        Flight.destination == criteria.destination
    )

    # Additional handling for departure date
    query = query.filter(Flight.departure_time >= departure_datetime)

    # Additional handling for arrival date if it's provided
    if criteria.arrival_date:
        try:
            arrival_date = parse(criteria.arrival_date).date()
            arrival_datetime = datetime.combine(arrival_date, time.max)
            query = query.filter(Flight.departure_time <= arrival_datetime)
        except ValueError:
            logging.error("Arrival date present but invalid as data type")
            return HTTPException(500, "Arrival date present but invalid as data type")

    # Flight Extra Filters
    if criteria.flight_number:
        query = query.filter(Flight.flight_number == criteria.flight_number)
    if criteria.airline:
        query = query.filter(Flight.airline == criteria.airline)
    if criteria.departure_time and criteria.arrival_time:
        query = query.filter(Flight.departure_time.between(criteria.departure_time, criteria.arrival_time))
    if criteria.seat_type:
        min_cost = int(criteria.min_cost) if criteria.min_cost is not None else 0
        max_cost = int(criteria.max_cost) if criteria.max_cost is not None else float('inf')

        if criteria.seat_type == 'economy':
            query = query.filter(Flight.economy_seat_cost.between(min_cost, max_cost))
        elif criteria.seat_type == 'business':
            query = query.filter(Flight.business_seat_cost.between(min_cost, max_cost))
        elif criteria.seat_type == 'first_class':
            query = query.filter(Flight.first_class_cost.between(min_cost, max_cost))

        # Calculate the total count of matching records

        # Calculate the total count of matching records
    total_count = query.count()

    # If no flights are found, return immediately
    if total_count == 0:
        return {
            "message": "There were no flights found for the search criteria.",
            "flights": [],
            "page": page,
            "total_pages": 0
        }

    # Calculate total pages
    total_pages = (total_count + page_size - 1) // page_size

    # Check if the requested page exceeds the total number of pages
    if page > total_pages:
        return {
            "message": "The requested page exceeds the total number of available pages.",
            "flights": [],
            "page": page,
            "total_pages": total_pages
        }

    # Apply pagination
    offset = (page - 1) * page_size
    flights = query.offset(offset).limit(page_size).all()

    # Convert SQLAlchemy models to Pydantic models
    flight_models = [FlightModel.from_orm(flight) for flight in flights]

    # Return the query results
    return {
        "query_results": len(flight_models),
        "flights": flight_models,
        "page": page,
        "total_pages": total_pages
    }

def handle_flight_book(flight_number: str, seat_type: str, num_seats: int = 1, db: Session = Depends(get_db)):
    """
    Books a specified number of seats on a flight.

    This function books seats on a flight identified by its flight_id. It handles seat 
    booking for different classes (economy, business, first class) and calculates the total cost based 
    on the number of seats and the seat type. It updates the flight's seat availability and commits the 
    changes to the database.

    Parameters:
    - flight_id (int): The unique identifier of the flight to book.
    - seat_type (str): The class of the seat to book (economy, business, or first_class).
    - num_seats (int, optional): The number of seats to book (default is 1).
    - db (Session, default Depends(get_db)): SQLAlchemy database session for executing queries.

    Returns:
    - On successful booking: A dictionary containing a success message and flight information.
    - On failure (flight not found or not enough seats): A failure message as a string.

    The function checks seat availability before booking. If the requested number of seats is 
    not available in the specified class, it returns an error message. If the flight is not found, 
    it returns a 'Flight not found.' message.
    """
    # Retrieve the flight from the database
    flight = db.query(Flight).filter(Flight.flight_number == flight_number).first()

    if not flight:
        return "Flight not found."

    # Initialize the cost variable
    total_cost = 0

    # Check seat availability based on seat type and number of requested seats
    if seat_type == "economy" and flight.open_seats_economy >= num_seats:
        flight.open_seats_economy -= num_seats
        total_cost = flight.economy_seat_cost * num_seats
    elif seat_type == "business" and flight.open_seats_business >= num_seats:
        flight.open_seats_business -= num_seats
        total_cost = flight.business_seat_cost * num_seats
    elif seat_type == "first_class" and flight.open_seats_first_class >= num_seats:
        flight.open_seats_first_class -= num_seats
        total_cost = flight.first_class_cost * num_seats
    else:
        # If not enough seats are available, return a failure message
        return f"Not enough {seat_type} seats available."

    # Commit the booking to the database
    db.commit()
    
    success_message = f"Successfully booked {num_seats} {seat_type} seat(s) on {flight.airline} flight on {flight.departure_date} from {flight.origin} to {flight.destination}. Total cost: ${total_cost}."

    # Return a success message
    return {"message": success_message, "flight_info": flight}

def search_flights(**params):
    """
    Sends a GET request to a FastAPI endpoint to search for flights based on various criteria.

    Parameters:
    - criteria (FlightSearchCriteria): An object containing the search criteria.

    Returns:
    The response from the FastAPI endpoint as a JSON object.
    """
    # Create an instance of FlightSearchCriteria from the passed arguments
    criteria = FlightSearchCriteria(**params)
    
    # Constructing the URL with query parameters
    url = f"http://127.0.0.1:8000/search-flights/?origin={criteria.origin}&destination={criteria.destination}&departure_date={criteria.departure_date}"

    # Adding optional parameters to the URL
    if criteria.arrival_date:
        url += f"&arrival_date={criteria.arrival_date}"
    if criteria.flight_number:
        url += f"&flight_number={criteria.flight_number}"
    if criteria.airline:
        url += f"&airline={criteria.airline}"
    if criteria.departure_time:
        url += f"&departure_time={criteria.departure_time}"
    if criteria.arrival_time:
        url += f"&arrival_time={criteria.arrival_time}"
    if criteria.seat_type:
        url += f"&seat_type={criteria.seat_type}"
    if criteria.min_cost is not None:
        url += f"&min_cost={criteria.min_cost}"
    if criteria.max_cost is not None:
        url += f"&max_cost={criteria.max_cost}"

    url += "&page=1&page_size=10"

    # Making the GET request
    response = requests.get(url, headers={'accept': 'application/json'})

    # Returning the JSON response
    return response.json()

def book_flight(**params):
    """
    Sends a POST request to a FastAPI endpoint to book flights based on seat_type and number of seats.

    Parameters:
    - params (dict): A dictionary containing the following keys:
        - flight_id (int): The unique identifier of the flight to book.
        - seat_type (str): The class of the seat to book (economy, business, or first_class).
        - num_seats (int, optional): The number of seats to book (default is 1).

    Returns:
    The response from the FastAPI endpoint as a JSON object.
    """
    # Constructing the URL with query parameters
    url = f"http://127.0.0.1:8000/book_flight?flight_number={params['flight_number']}&seat_type={params['seat_type']}&num_seats={params.get('num_seats', 1)}"

    # Making the POST request
    response = requests.post(url, headers={'accept': 'application/json'})

    # Returning the JSON response
    return response.json()
