<?php

use infrajs\rest\Rest;
use infrajs\ans\Ans;
use infrajs\template\Template;
use infrajs\mail\Mail;

Rest::get( function () {
	echo '<h1>Заказать звонок</h1>';
	echo '<p>Мигающая кнопка для сайта</p>';
	echo '<p><a href="http://lawfortis.ru.org/-flashing-callback/submit?phone=234234">Проверочная ссылка</a></p>';
},'submit', function () {
	$ans = array();
	$ans['phone'] = Ans::REQ('phone','string','');
	if (strlen($ans['phone'])<2) return Ans::err($ans,'Ошибка. Указан некорректный телефон.');

	$body = Template::parse('-flashing-callback/mail.tpl',$ans);
	Mail::toAdmin('Телефон с сайта '.$_SERVER['HTTP_HOST'], 'noreplay@'.$_SERVER['HTTP_HOST'], $body);

	Ans::ret($ans,'Телефонный номер <b>'.$ans['phone'].'</b> принят.');
});