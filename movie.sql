CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_num VARCHAR(15)
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    ticket_price VARCHAR(10) NOT NULL,
    movie_id INT,
    seat_id INT
);

CREATE TABLE concessions(
    booth_id SERIAL PRIMARY KEY,
    current_items TEXT,
    staff TEXT 
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_length INT,
    actors TEXT NOT NULL,
    show_dates TEXT NOT NULL,
    booth_id INT,
    FOREIGN KEY (booth_id) REFERENCES concessions(booth_id)
);

