<?php

use infrajs\rest\Rest;
use infrajs\ans\Ans;


Rest::get( function () {
	echo '<h1>Заказать звонок</h1>';
	echo '<p>Мигающая кнопка для сайта</p>';
	echo '<p><a href="http://lawfortis.ru.org/-flashing-callback/submit?phone=234234">Проверочная ссылка</a></p>';
},'submit', function () {
	$ans = array();
	$ans['phone'] = Ans::REQ('phone');
	return Ans::ret($ans,'Телефонный номер <b>'.$ans['phone'].'</b> принят. Менеджер свяжется с вами в рабочее время');
});