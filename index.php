<?php
require_once('helpers.php');
$is_auth = rand(0, 1);
$user_name = 'Антон'; // укажите здесь ваше имя
$categorys = ["Доски и лыжи", "Крепления", "Ботинки", "Одежда", "Инструменты", "Разное"]; // Массив категорий товара
// Массив лотов
$lots = [
    ['title' => '2014 Rossignol District Snowboard',
    'category' => 'Доски и лыжи',
    'price' => 10999,
    'url' => 'img/lot-1.jpg'
    ],
    ['title' => 'DC Ply Mens 2016/2017 Snowboard',
    'category' => 'Доски и лыжи',
    'price' => 159999,
    'url' => 'img/lot-2.jpg'
    ],
    ['title' => 'Крепления Union Contact Pro 2015 года размер L/XL',
    'category' => 'Крепления',
    'price' => 8000,
    'url' => 'img/lot-3.jpg'
    ],
    ['title' => 'Ботинки для сноуборда DC Munity Charocal',
    'category' => 'Ботинки',
    'price' => 10999,
    'url' => 'img/lot-4.jpg'
    ],
    ['title' => 'Куртка для сноуборда DC Munity Charocal',
    'category' => 'Одежда',
    'price' => 7500,
    'url' => 'img/lot-5.jpg'
    ],
    ['title' => 'Маска Oakley Canopy',
    'category' => 'Разное',
    'price' => 5400,
    'url' => 'img/lot-6.jpg'
]];
// Функция обработки цены.
function get_price ($price) {
    $price = ceil($price);
    if ($price >= 1000) {
       $part2 = substr($price, -3); // Последние три цифры (так мелочь)
       $part1 = substr($price, 0, -3); // А это тысячи
       $price = $part1." ".$part2." "."&#8381"; // Готовая цена если она больше 1000 рублей
    }else {
        $price = $price." "."&#8381"; // Готовая цена если она меньше 1000 рублей
    }
    return $price;
   }
// Подключение файла main.php с помощью функции. Передача данных в шаблон.
$page_content = include_template('main.php', ['categorys' => $categorys, 'lots' => $lots]);
// Подключение файла layout.php с помощью функции.
$layout_content = include_template('layout.php', ['title' => 'Главная', 'content' => $page_content, 'categorys' => $categorys, 'is_auth' => $is_auth, 'user_name' => $user_name]);

print($layout_content); // Выводим лайоут на экран
