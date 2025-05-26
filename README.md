# 📚 Library Management System (PostgreSQL)

![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791?logo=postgresql&logoColor=white)
![Schema](https://img.shields.io/badge/Schema-Normalized-success)
![Feature-Loans](https://img.shields.io/badge/Feature-Loan%20Tracking-blueviolet)
![Built%20by](https://img.shields.io/badge/Built%20by-Zarifa%20Ibrahimzada-ff69b4)

A relational database schema for managing a library, built using PostgreSQL.  
It supports books, users, authors, and loan tracking.

## 🗂️ Schema Overview

- `books` — Stores book information
- `users` — Library users (borrowers)
- `authors` — Stores author details
- `loans` — Tracks which user borrowed which book

## 🔗 Relationships

- A user can borrow many books (tracked in `loans`)
- A book can be borrowed many times
- Optional: A book can have multiple authors (not yet added)

## 📸 ER Diagram

![Library ER Diagram](library_schema.pdf)

## 📂 Sample SQL

The full schema and sample data is in:
libray_schema.pgsql

## 🛠️ Technologies

- PostgreSQL
- SQL
- VS Code + pgAdmin
