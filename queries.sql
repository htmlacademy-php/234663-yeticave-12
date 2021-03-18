
INSERT INTO categories (name, symbol_code) VALUES ('Доски и лыжи', 'boards');
INSERT INTO categories (name, symbol_code) VALUES ('Крепления', 'attachment');
INSERT INTO categories (name, symbol_code) VALUES ('Ботинки', 'boots');
INSERT INTO categories (name, symbol_code) VALUES ('Одежда', 'clothing');
INSERT INTO categories (name, symbol_code) VALUES ('Инструменты', 'tools');
INSERT INTO categories (name, symbol_code) VALUES ('Разное', 'other');

INSERT INTO users (date_register, name, email, contacts, password)
 VALUES ('2020-11-25', 'Николай', 'NikolaT@elect.com', 'Adress', 'edison');
INSERT INTO users (date_register, name, email, contacts, password)
 VALUES ('2019-03-24', 'Добрыня', 'DobrinjaB@skaz.com', 'Adress', 'Zmeji');
INSERT INTO users (date_register, name, email, contacts, password)
 VALUES ('2020-06-10', 'Джек', 'DjackN@hotel.com', 'Adress', 'Sijanie');
INSERT INTO users (date_register, name, email, contacts, password)
 VALUES ('2020-07-06', 'Алла', 'AllaP@sovet.com', 'Adress', 'Iceberg');


INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES ('2020-12-23', '2014 Rossignol District Snowboard', 'Отличная доска','img/lot-1.jpg', 10999, 150, '2021-02-23', 3, 1);
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2021-01-25','DC Ply Mens 2016/2017 Snowboard', 'Накатался, отдам почти даром', 'img/lot-2.jpg', 159999, 1000, '2021-02-013', 2, 1);
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2020-11-10', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Держат хорошо', 'img/lot-3.jpg', 8000, 100, '2021-02-12', 1, 2);
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2021-01-25', 'Ботинки для сноуборда DC Munity Charocal', 'Почти не ношеные', 'img/lot-4.jpg', 10999, 500, '2021-02-16', 2, 3);
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2021-01-25', 'Куртка для сноуборда DC Munity Charocal', 'Крепкая и красивая', 'img/lot-5.jpg', 7500, 150, '2021-02-05', 2, 4);
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2021-01-01', 'Маска Oakley Canopy', 'Очень ничего', 'img/lot-6.jpg', 5400, 100, '2021-02-22', 4, 6);

INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-12-27', 300, 2, 1);
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2021-01-4', 300, 2, 6);
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-01-26', 150, 1, 5);
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-01-05', 300, 3, 6);
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-01-07', 450, 1, 6);
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-12-05', 300, 2, 3);

