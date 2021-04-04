
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
 VALUES ('2020-12-23', '2014 Rossignol District Snowboard', 'Отличная доска','img/lot-1.jpg', 10999, 150, '2021-03-23', (select u.id from users u where u.name = 'Джек'), (select c.id from categories c where c.name = 'Доски и лыжи'));
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2021-01-25','DC Ply Mens 2016/2017 Snowboard', 'Накатался, отдам почти даром', 'img/lot-2.jpg', 159999, 1000, '2021-04-013', (select u.id from users u where u.name = 'Добрыня'), (select c.id from categories c where c.name = 'Доски и лыжи'));
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2020-11-10', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Держат хорошо', 'img/lot-3.jpg', 8000, 100, '2021-02-12', (select u.id from users u where u.name = 'Николай'), (select c.id from categories c where c.name = 'Крепления'));
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2021-01-25', 'Ботинки для сноуборда DC Munity Charocal', 'Почти не ношеные', 'img/lot-4.jpg', 10999, 500, '2021-04-15', (select u.id from users u where u.name = 'Добрыня'), (select c.id from categories c where c.name = 'Ботинки'));
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2021-01-25', 'Куртка для сноуборда DC Munity Charocal', 'Крепкая и красивая', 'img/lot-5.jpg', 7500, 150, '2021-02-05', (select u.id from users u where u.name = 'Добрыня'), (select c.id from categories c where c.name = 'Одежда'));
INSERT INTO lots(date_create, lot_name, description, img, first_price, bet_step, date_end, author, categoryID)
 VALUES('2021-01-01', 'Маска Oakley Canopy', 'Очень ничего', 'img/lot-6.jpg', 5400, 100, '2021-02-22', (select u.id from users u where u.name = 'Алла'), (select c.id from categories c where c.name = 'Разное' ));

INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-12-27', 300, (select u.id from users u where u.name = 'Добрыня'), (select l.id from lots l where l.lot_name = '2014 Rossignol District Snowboard'));
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2021-01-4', 300, (select u.id from users u where u.name = 'Добрыня'), (select l.id from lots l where l.lot_name = 'Маска Oakley Canopy'));
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-01-26', 150, (select u.id from users u where u.name = 'Николай'), (select l.id from lots l where l.lot_name = 'Куртка для сноуборда DC Munity Charocal'));
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-01-05', 300, (select u.id from users u where u.name = 'Джек'), (select l.id from lots l where l.lot_name = 'Маска Oakley Canopy'));
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-01-07', 450, (select u.id from users u where u.name = 'Николай'), (select l.id from lots l where l.lot_name = 'Маска Oakley Canopy'));
INSERT INTO bets (time_bet, cost, userID, lotID)
  VALUES ('2020-12-05', 300, (select u.id from users u where u.name = 'Добрыня'), (select l.id from lots l where l.lot_name = 'Крепления Union Contact Pro 2015 года размер L/XL'));

 /*-получить все категории;*/
SELECT id, NAME, symbol_code FROM categories;

/*показать лот по его id. Получите также название категории, к которой принадлежит лот;*/
SELECT id, (SELECT NAME FROM categories WHERE id = lots.categoryID) FROM lots;

/*получить список ставок для лота по его идентификатору с сортировкой по дате.*/


/*получить самые новые, открытые лоты. Каждый лот должен включать название, стартовую цену, ссылку на изображение, текущую цену, название категории;*/


/*обновить название лота по его идентификатору;*/
