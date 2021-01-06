<?php
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
/**
 * Подключает шаблон, передает туда данные и возвращает итоговый HTML контент
 * @param string $name Путь к файлу шаблона относительно папки templates
 * @param array $data Ассоциативный массив с данными для шаблона
 * @return string Итоговый HTML
 */
function include_template($name, array $data = []) {
    $name = 'templates/' . $name;
    $result = '';

    if (!is_readable($name)) {
        return $result;
    }

    ob_start();
    extract($data);
    require $name;

    $result = ob_get_clean();

    return $result;
}
// Подключение файла main.php с помощью функции. Передача данных в шаблон.
$page_content = include_template('main.php', ['categorys' => ["Доски и лыжи", "Крепления", "Ботинки", "Одежда", "Инструменты", "Разное"], 'lots' => [
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
    ]
]]);
// Подключение файла layout.php с помощью функции.
$layout_content = include_template('layout.php', ['title' => 'Главная', 'content' => $page_content, 'categorys' => ["Доски и лыжи", "Крепления", "Ботинки", "Одежда", "Инструменты", "Разное"]]);

print($layout_content);
