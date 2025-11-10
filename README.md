# CryptoConnect Docker Database

## Overview
This project runs the CryptoConnect database using Docker and PostgreSQL. It automatically creates tables and populates them with sample data for users, wallets, cryptocurrencies, and transactions.

## Project Folder Structure
![File System Diagram](https://github.com/anm1234/docker-database-project/raw/main/file_system.png)

## How to Start, Stop, and Connect to the Database

### Start the Database
Open a terminal and navigate to the project folder:

cd path/to/cryptoconnect-docker-db
docker compose up

- Pulls the PostgreSQL image if not present.
- Automatically runs SQL scripts in init-db/ to create tables and insert sample data.

### Connect to the Database
Open a new terminal and run:

docker exec -it cryptoconnect_db psql -U student -d cryptoconnect

- List all tables:

\dt

- View table data:

SELECT * FROM users;
SELECT * FROM wallets;
SELECT * FROM cryptocurrencies;
SELECT * FROM transactions;

- Exit psql:

\q

### Stop the Database

docker compose down

## Verification Steps for D3 Deliverable
1. Start the database with `docker compose up`.
2. Connect using `docker exec -it cryptoconnect_db psql -U student -d cryptoconnect`.
3. Verify tables exist:

\dt

4. Verify initial data:

SELECT * FROM users;
SELECT * FROM wallets;
SELECT * FROM cryptocurrencies;
SELECT * FROM transactions;

5. Optional: Insert sample data:

INSERT INTO users (username, email) VALUES ('Charlie', 'charlie@cryptoconnect.com');
INSERT INTO wallets (user_id, wallet_name, balance) VALUES (3, 'Charlie_Wallet', 2.5);
INSERT INTO transactions (wallet_id, crypto_id, transaction_type, amount) VALUES (3, 1, 'BUY', 0.75);

