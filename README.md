# flashing-callback
Вся анимация выполнена с помощью CSS.
## Добавить ссылку 
Этот код ссылки, нужно добавить в footer
```
<a href="#" id="popup__toggle" onclick="return false;">
  <div class="circlephone" style="transform-origin: center;"></div>
  <div class="circle-fill" style="transform-origin: center;"></div>
  <div class="img-circle" style="transform-origin: center;">
    <div class="img-circleblock" style="transform-origin: center;"></div>
  </div>
 </a>
```
Кнопка рассчитана на подключение модального окна из другой статьи. Если подключаете сторонние ссылки, то у самой кнопки в ее HTML коде есть событие
```
onclick="return false;"
```
Которое запрещает переход по ссылке. Это сделано для того, чтобы в адрес не добавлялся якорь окна. Удалите это событие и тогда, если вы укажите ссылку на страницу или еще что ни-будь, переход осуществится.

## Style css
Первые 7 строк отвечают за внешний вид кнопки, далее уже анимация. В первой строке можно настроить расположение кнопки, а в шестой строке указываете путь к изображению в параметре background-image:url(mini.png).

Автор: http://gnatkovsky.com.ua/animirovannaya-knopka-obratnogo-zvonka.html
