<div class="popupblock">
	<style scoped>
		.popupblock {
			padding:20px;
		}
		.popupblock .logoblock {
			padding-bottom: 20px;
		}
		.popupblock h1 {
			font-size: 26px;
			margin-bottom: 15px;
		}
		.popupblock .form-control {
			width: 50%;
		}
	</style>
	<div class="logoblock">
		<img height="50px" src="/-flashing-callback/logo.png">
	</div>
	<h1>Заказать звонок</h1>
	<p>Оставьте свой номер и мы перезвоним в рабочее время.</p>
	<form method="post" action="/-flashing-callback/phone.php">
		<p><input name="phone" type="tel" class="form-control" placeholder="+7 (999) 999 99 99"></p>
		<p style="font-size: 80%;">Нажимая кнопку «Жду звонка», Вы соглашаетесь на обработку <a href="/terms">персональных данных</a> в соответствии с ФЗ №152 "О персональных данных".</p>
		<button style="margin-bottom:15px" type="submit" class="btn btn-primary btn-lg">Жду звонка</button>
	</form>
	{config.ans:ans.msg}
</div>
{ans::}-ans/ans.tpl
