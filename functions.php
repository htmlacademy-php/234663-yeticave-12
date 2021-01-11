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
