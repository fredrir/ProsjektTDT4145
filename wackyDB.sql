--tables
-- Table: costumer_profile
CREATE TABLE
    costumer_profile (
        costumer_id INT PRIMARY KEY,
        phone_number VARCHAR(20) UNIQUE NOT NULL,
        name VARCHAR(255) NOT NULL,
        address VARCHAR(255) NOT NULL,
    );

--Table: hall
CREATE TABLE
    hall (
        hall_id INT PRIMARY KEY,
        hall_name VARCHAR(255) NOT NULL,
    );

--Table: chair
CREATE TABLE
    chairs (
        hall_id INT,
        seat_number INT NOT NULL,
        row_number INT NOT NULL,
        area VARCHAR(255) NOT NULL,
        PRIMARY KEY (hall_id, row_number, seat_number),
        CONSTRAINT fk_hall_id FOREIGN KEY (hall_id) REFERENCES hall (hall_id) ON UPDATE CASCADE ON DELETE SET NULL,
    )