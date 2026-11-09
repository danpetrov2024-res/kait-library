Шаг
Файл
Функция / действие
Данные
1
templates/register.php
HTML-форма
ФИО, email, пароль
2
public/index.php
Обработка POST
$_POST
3
src/Validator.php
Проверка полей
ФИО, email, пароль
4
src/Auth.php
Auth::register()
Данные пользователя
5
database/schema.sql
Таблица users
Запись пользователя
6
public/index.php
redirect('catalog')
Перенаправление
3. Сценарий 2 — Бронирование книги
Шаг
Файл
Функция / действие
Данные
1
templates/book.php
Кнопка «Забронировать»
ID книги
2
public/assets/js/book.js
Отправка запроса
book_id
3
public/api.php
Обработка reserve
JSON
4
src/LoanService.php
LoanService::reserve()
ID книги и пользователя
5
database/schema.sql
Таблица reservations
Бронирование
6
public/api.php
json_response()
Результат операции