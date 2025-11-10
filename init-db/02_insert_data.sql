INSERT INTO users (username, email) VALUES
('Alice', 'alice@cryptoconnect.com'),
('Bob', 'bob@cryptoconnect.com');

INSERT INTO wallets (user_id, wallet_name, balance) VALUES
(1, 'Alice_Main_Wallet', 3.2548),
(2, 'Bob_Crypto_Fund', 1.5000);

INSERT INTO cryptocurrencies (name, symbol) VALUES
('Bitcoin', 'BTC'),
('Ethereum', 'ETH'),
('Cardano', 'ADA');

INSERT INTO transactions (wallet_id, crypto_id, transaction_type, amount) VALUES
(1, 1, 'BUY', 0.5),
(1, 2, 'BUY', 1.25),
(2, 3, 'SELL', 0.75);
