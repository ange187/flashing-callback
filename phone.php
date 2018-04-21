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

session_start();
if (!isset($_SESSION['submit_time'])) $_SESSION['submit_time'] = 0;
 
if (time() - $_SESSION['submit_time'] < 60) return Ans::err($ans, 'Письмо уже отправлено! Новое сообщение можно будет отправить через 1 минуту!');
$_SESSION['submit_time'] = time();

$subject = 'Заказ обратного звонка';
$body = 'Перезвоните по телефону\n'.$phone;
$from = "noreplay@".$_SERVER["HTTP_HOST"];
$r = Mail::toAdmin($subject, $from, $body);
if (!$r) return Ans::err($ans,'Ошибка, письмо менеджеру не отправлено');

return Ans::ret($ans, 'Менеджер оповещён');

 
