{root:}
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
	{:logo}
	<h1>Заказать звонок</h1>
	<p>Оставьте свой номер и мы перезвоним в рабочее время.</p>
	<form method="post" action="/-flashing-callback/phone.php">
		<p><input name="phone" type="tel" class="form-control" placeholder="+7 (999) 999 99 99"></p>
				{:terms}
		<div id="recaptchaflash" class="g-recaptcha mb-3"  data-sitekey="{~conf.recaptcha.sitekey}"></div>
		<button style="margin-bottom:15px" type="submit" class="btn {config.btncls?config.btncls?:btncls} btn-lg">Жду звонка</button>
	</form>
	<script>
		domready(function () {
			Event.one('reCAPTCHA', function (){
				var el = document.getElementById('recaptchaflash');
				if (!el) return;
				grecaptcha.render(el);
			});
		});
	</script>
	{config.ans:ans.msg}
</div>
{btncls:}btn-primary
{ans::}-ans/ans.tpl
{terms:}
	<p style="font-size: 80%;">Нажимая кнопку «Жду звонка», Вы соглашаетесь на обработку <a href="/terms">персональных данных</a> в соответствии с ФЗ №152 "О персональных данных".</p>
{logo:}
	<div class="logoblock d-flex justify-content-between align-items-start">
		<div>
			<img class="img-fluid" src="/-flashing-callback/logo.png">
		</div>
		<div style="font-size:18px; cursor: pointer; margin-top:-8px" onclick="Popup.close()"><i class="fas fa-times"></i></div>
	</div>