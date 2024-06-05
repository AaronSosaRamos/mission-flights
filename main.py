from fastapi import FastAPI, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List, Optional
import logging

from services.flight_manager import generate_flights, handle_flight_search, handle_flight_book
import models

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

logger = logging.getLogger(__name__)
    
app = FastAPI()

@app.post("/generate-flight/")
def generate_flight(flight_input: models.FlightInput, num_flights: int, db: Session = Depends(models.get_db)):
    return generate_flights(flight_input, num_flights, db)

@app.post("/book_flight")
def book_flight_endpoint(flight_number: str, seat_type: str, num_seats: int = 1, db: Session = Depends(models.get_db)):
    try:
        result = handle_flight_book(flight_number, seat_type, num_seats, db)
        return {"message": result}
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

@app.get("/flights/", response_model=List[models.FlightModel])
def read_all_flights(db: Session = Depends(models.get_db)):
    flights = db.query(models.Flight).all()
    return flights

@app.get("/search-flights/")
def search_flights_endpoint(criteria: models.FlightSearchCriteria = Depends(), page: Optional[int] = 1, page_size: Optional[int] = 10, db: Session = Depends(models.get_db)):
    return handle_flight_search(criteria, db, page, page_size)
