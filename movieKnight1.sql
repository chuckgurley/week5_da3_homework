CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  rewards_id VARCHAR(50)
);

CREATE TABLE Movie (
  movie_id SERIAL PRIMARY KEY,
  theater_1 VARCHAR(50),
  theater_2 VARCHAR(50),
  theater_3 VARCHAR(50),
  theater_4 VARCHAR(50)
  
);

CREATE TABLE CustomerRewards (
  cus_rew_id SERIAL PRIMARY KEY,
  concessions_id VARCHAR(50),
  customer_id VARCHAR(50)
  
);

CREATE TABLE Tickets (
  ticket_id SERIAL PRIMARY KEY,
  ticket_price NUMERIC(4,2),
  movie_id INTEGER,
  cus_rew_id VARCHAR(50),
  
  
  
FOREIGN KEY(movie_id) REFERENCES Movie(movie_id),
FOREIGN KEY (ticket_id) REFERENCES CustomerRewards(cus_rew_id)
);

CREATE TABLE Concessions (
  concessions_id SERIAL PRIMARY KEY,
  drink_id NUMERIC(4,2),
  popcorn_id NUMERIC(4,2),
  candy NUMERIC(4,2),
  hot_dog NUMERIC(4,2),
  pickel NUMERIC(4,2),
  payment NUMERIC(4,2)
 
);


