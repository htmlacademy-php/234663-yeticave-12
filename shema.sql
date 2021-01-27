CREATE DATABASE YetiCave
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
    USE YetiCave;

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(64) not null,
    symbol_code CHAR(128)
);

CREATE TABLE lots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_create TIMESTAMP not null,
    lot_name CHAR(255) not null,
    description TEXT not null,
    img CHAR(255) not null,
    first_price INT not null,
    date_end TIMESTAMP not null,
    author INT not null,
    winner INT not null,
    category_id INT not null
);

ALTER TABLE lots ADD
FOREIGN KEY (author)
REFERENCES users(id);

ALTER TABLE lots ADD
FOREIGN KEY (winner)
REFERENCES users(id);

ALTER TABLE lots ADD
FOREIGN KEY (category_id)
REFERENCES categories(id);

CREATE FULLTEXT INDEX lot_text on lots(description);
CREATE INDEX lots_name on lots(name);

CREATE TABLE bets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    time_bet TIMESTAMP not null,
    cost INT not null,
    user_id INT not null,
    lot_id INT not null
);

ALTER TABLE bets ADD
FOREIGN KEY (user_id)
REFERENCES users(id);

ALTER TABLE bets ADD
FOREIGN KEY (lot_id)
REFERENCES lots(id);

CREATE TABLE users (
   id INT AUTO_INCREMENT PRIMARY KEY,
   date_register TIMESTAMP not null,
   name CHAR(64) not null,
   email VARCHAR(300) not null UNIQUE,
   contacts TEXT not null,
   password CHAR(64) not null,
   created_lots INT,
   user_bets INT
);

CREATE UNIQUE INDEX user_email on users(email);

ALTER TABLE users ADD
FOREIGN KEY (created_lots)
REFERENCES lots(id);

ALTER TABLE users ADD
FOREIGN KEY (user_bets)
REFERENCES bets(id);
