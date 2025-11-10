CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE wallets (
    wallet_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    wallet_name VARCHAR(100),
    balance DECIMAL(18,8) DEFAULT 0.0
);

CREATE TABLE cryptocurrencies (
    crypto_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    symbol VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    wallet_id INT REFERENCES wallets(wallet_id),
    crypto_id INT REFERENCES cryptocurrencies(crypto_id),
    transaction_type VARCHAR(10) CHECK (transaction_type IN ('BUY', 'SELL', 'TRANSFER')),
    amount DECIMAL(18,8),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
