CREATE DATABASE IF NOT EXISTS YetiCave
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
    USE YetiCave;

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
    symbol_code VARCHAR(128) NOT NULL UNIQUE
);

CREATE TABLE lots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_create TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lot_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    img TEXT NOT NULL,
    first_price INT NOT NULL,
    bet_step int NOT NULL,
    date_end TIMESTAMP NOT NULL,
    author INT NOT NULL,
    winner INT,
    categoryID INT NOT NULL
);

CREATE TABLE users (
   id INT AUTO_INCREMENT PRIMARY KEY,
   date_register TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
   name VARCHAR(128) NOT NULL,
   email VARCHAR(255) NOT NULL UNIQUE,
   contacts TEXT NOT NULL,
   password CHAR(64) NOT NULL,
   created_lots INT,
   user_bets INT
);

CREATE TABLE bets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    time_bet TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cost INT NOT NULL,
    userID INT NOT NULL,
    lotID INT NOT NULL
);

ALTER TABLE lots ADD
FOREIGN KEY (author)
REFERENCES users(id);

ALTER TABLE lots ADD
FOREIGN KEY (winner)
REFERENCES users(id);

ALTER TABLE lots ADD
FOREIGN KEY (categoryID)
REFERENCES categories(id);

CREATE FULLTEXT INDEX lot_text on lots(description);
CREATE UNIQUE INDEX lots_name on lots(lot_name);

ALTER TABLE bets ADD
FOREIGN KEY (userID)
REFERENCES users(id);

ALTER TABLE bets ADD
FOREIGN KEY (lotID)
REFERENCES lots(id);

CREATE UNIQUE INDEX user_email on users(email);

ALTER TABLE users ADD
FOREIGN KEY (created_lots)
REFERENCES lots(id);

ALTER TABLE users ADD
FOREIGN KEY (user_bets)
REFERENCES bets(id);
