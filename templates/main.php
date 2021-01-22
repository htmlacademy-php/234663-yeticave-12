    <section class="promo">
        <h2 class="promo__title">Нужен стафф для катки?</h2>
        <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
        <ul class="promo__list">
            <!-- Заполняем список категорий -->
            <?php foreach ($categorys as $category): ?>
            <li class="promo__item promo__item--boards">
                <a class="promo__link" href="pages/all-lots.html"><?= $category; ?></a>
            </li>
            <?php endforeach; ?>
        </ul>
    </section>
    <section class="lots">
        <div class="lots__header">
            <h2>Открытые лоты</h2>
        </div>
        <ul class="lots__list">
            <!-- Заполняем список лотов -->
            <?php foreach ($lots as $key => $val): ?>
            <li class="lots__item lot">
                <div class="lot__image">
                    <img src="<?= $val['url']; ?>" width="350" height="260" alt="<?= htmlspecialchars($val['title']); ?>"> <!-- Добавлена функция фильтрации спецсимволов, почему-то не работает -->
                </div>
                <div class="lot__info">
                    <span class="lot__category"><?= $val['category']; ?></span>
                    <h3 class="lot__title"><a class="text-link" href="pages/lot.html"><?= htmlspecialchars($val['title']); ?></a></h3> <!--Добавлена функция фильтрации спецсимволов, почему-то не работает -->
                    <div class="lot__state">
                        <div class="lot__rate">
                            <span class="lot__amount">Стартовая цена</span>
                            <span class="lot__cost"><?= get_price($val['price']); ?></span> <!-- Вызов функции обработки цены -->
                        </div>
                        <?php $time_lot = get_lot_time($val['end_time']); ?> <!-- Вызываем функцию времени существования лота -->
                        <?php $time_finishing = ""; ?>
                        <?php if ($time_lot[0] < 1): ?> <!-- Проверяем колличество оставшихся часов и если оно меньше 1, добаляем класс -->
                        <?= $time_finishing = "timer--finishing"; ?> <!-- Добавляем класс новый класс-->
                        <? endif; ?>
                        <div class="lot__timer timer <?= $time_finishing; ?>">
                            <?= $time_lot[0]; ?> : <?= $time_lot[1]; ?> <!-- Выводим на экран колличество оставшихся часов и минут -->
                        </div>
                    </div>
                </div>
            </li>
            <?php endforeach; ?>
        </ul>
    </section>
