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
   function get_lot_time ($date) {
    $cur_date = strtotime("now"); // Получаем метку времени в формате Unixtime.
    $lot_date = strtotime($date); // Создаём метку времени для даты окончания лота.
    $lot_end_time = $lot_date - $cur_date; // Вычисляем разницу дат.
    $hour_count = floor($lot_end_time/3600); // Вычисляем колличество оставшихся часов.
    $min_count = floor(($lot_end_time%3600)/60); // Вычисляем колличество оставшихся минут
    // Проверяме значение оставшихся часов и если оно меньше 10, добавляем ноль впереди.
    if ($hour_count < 10){
     $hour_count = str_pad($hour_count, 2, "0", STR_PAD_LEFT);
    }
    return [$hour_count, $min_count]; // Возвращаем массив.
    };
