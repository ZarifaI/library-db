-- 📚 Books Table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    year INT
);

-- 👤 Users Table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255) UNIQUE NOT NULL
);

-- ✍️ Authors Table
CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    active_years VARCHAR(100),
    birth_year INTEGER,
    nationality VARCHAR
);

-- 🔁 Loans Table
CREATE TABLE loans (
    loan_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    book_id INT REFERENCES books(book_id),
    borrow_date DATE NOT NULL,
    return_date DATE
);

-- ✅ Sample Data

-- Insert Users
INSERT INTO users (first_name, last_name, email) VALUES
('Alice', 'Smith', 'alice@example.com'),
('Bob', 'Johnson', 'bob@example.com');

-- Insert Authors
INSERT INTO authors (first_name, last_name, active_years, birth_year, nationality) VALUES
('George', 'Orwell', '1930–1950', 1903, 'British'),
('Toni', 'Morrison', '1970–2010', 1931, 'American');

-- Insert Books
INSERT INTO books (title, genre, year) VALUES
('1984', 'Dystopian', 1949),
('Beloved', 'Historical Fiction', 1987);

-- Insert Loans
INSERT INTO loans (user_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2025-05-24', NULL);
