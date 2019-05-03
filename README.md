# flashing-callback
Вся анимация выполнена с помощью CSS.
## Добавить ссылку 
Этот код ссылки, нужно добавить в footer
```
<a class="d-none d-sm-block flashing-callback" data-crumb="false" data-ascroll="false" href="/contacts" onclick="Goal.reach('flashing-callback-click'); return false;"></a>
<a class="d-block d-sm-none flashing-html" data-crumb="false" data-ascroll="false" href="tel:+70000000" onclick="Goal.reach('flashing-callback-click');"></a>
```
Кнопка рассчитана на подключение модального окна из infras иначе нужно добавить свой обработчик на onclick.

## Style css
Первые 7 строк отвечают за внешний вид кнопки, далее уже анимация. В первой строке можно настроить расположение кнопки, а в шестой строке указываете путь к изображению в параметре background-image:url(mini.png).

Автор: http://gnatkovsky.com.ua/animirovannaya-knopka-obratnogo-zvonka.html
