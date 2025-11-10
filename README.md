# CryptoConnect Docker Database

## Overview
This project runs the **CryptoConnect database** using Docker and PostgreSQL.  
It automatically creates tables and populates them with sample data for users, wallets, cryptocurrencies, and transactions.

---

## Folder Structure
cryptoconnect-docker-db/
├── docker-compose.yml
├── init-db/
│ ├── 01_create_tables.sql
│ └── 02_insert_data.sql
└── README.md

To start the database, open a terminal, navigate to the project folder, and run:

cd path/to/cryptoconnect-docker-db
docker compose up

This will pull the PostgreSQL image if it is not already downloaded and automatically run SQL scripts in init-db/ to create tables and insert sample data.

To connect to the database, open a new terminal and run:

docker exec -it cryptoconnect_db psql -U student -d cryptoconnect

Inside psql, you can list all tables using \dt and view data using:

SELECT * FROM users;
SELECT * FROM wallets;
SELECT * FROM cryptocurrencies;
SELECT * FROM transactions;

To exit psql, type \q.

To stop the database, run:

docker compose down

Optionally, to remove all volumes and reset the database, run:

docker compose down -v

The default credentials are:
User: student
Password: student123
Database: cryptoconnect
Port: 5432

For verification for the D3 deliverable, follow these steps:

Start the database with docker compose up.

Connect using docker exec -it cryptoconnect_db psql -U student -d cryptoconnect.

Verify tables exist using \dt.

Verify initial data with:

SELECT * FROM users;
SELECT * FROM wallets;
SELECT * FROM cryptocurrencies;
SELECT * FROM transactions;

Optional: Insert sample data to test:

INSERT INTO users (username, email) VALUES ('Charlie', 'charlie@cryptoconnect.com
');
INSERT INTO wallets (user_id, wallet_name, balance) VALUES (3, 'Charlie_Wallet', 2.5);
INSERT INTO transactions (wallet_id, crypto_id, transaction_type, amount) VALUES (3, 1, 'BUY', 0.75);


\dt showing all tables

Data from users, wallets, cryptocurrencies, and transactions tables

Terminal logs showing docker compose up

This README fully covers starting, stopping, connecting to the database, verifying tables and data, and submission guidance for the D3 deliverable.