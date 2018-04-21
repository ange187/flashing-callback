<?php
use infrajs\ans\Ans;
use infrajs\mail\Mail;

if (isset($_POST["phone"])) {
	$phone = $_POST["phone"];
} else {
	$phone = '';
}

$ans = array();

$ans['phone'] = $phone;
if (strlen($phone) < 6 ) return Ans::err($ans,'Уточните ваш телефон');

$subject = 'Заказ обратного звонка';
$body = 'Перезвоните по телефону\n'.$phone;
$from = "noreplay@".$_SERVER["HTTP_HOST"];
$r = Mail::toAdmin($subject, $from, $body);
if (!$r) return Ans::err($ans,'Ошибка, письмо менеджеру не отправлено');

return Ans::ret($ans, 'Менеджер оповещён');

 
