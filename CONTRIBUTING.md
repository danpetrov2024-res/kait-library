Руководство для разработчиков KAIT Library
1. О проекте
KAIT Library — веб-приложение для автоматизации работы библиотеки КАИТ.

Технологии:
PHP 8.3
MySQL 8
HTML, CSS, JavaScript
Apache (XAMPP)
Git и GitHub
2. Установка проекта
Клонируйте репозиторий:
git clone https://github.com/danpetrov2024-res/kait-library.git
Разместите проект в папке C:\xampp\htdocs\kait-library.

Запустите Apache и MySQL через XAMPP.

Создайте базу данных и импортируйте SQL-файлы из папки database/ согласно инструкции проекта.

Скопируйте .env.example в .env и укажите параметры подключения к базе данных.

Адрес приложения:

http://localhost/kait-library/public/
3. Общие правила форматирования
Проект использует .editorconfig и .gitattributes.

Основные правила:
Кодировка UTF-8.
Окончания строк LF.
Отступы — 4 пробела для PHP.
Удаление лишних пробелов в конце строк.
Добавление пустой строки в конце файла.
Не изменяйте правила форматирования без согласования с командой.
4. Настройка VS Code
Установите Visual Studio Code и рекомендуемые расширения:
EditorConfig for VS Code
PHP Intelephense
Проектные настройки расположены в .vscode/settings.json.

Список рекомендуемых расширений — в .vscode/extensions.json.

Для переноса пользовательских настроек импортируйте профиль practice/m04/vscode.code-profile.
5. Настройка NetBeans
Откройте проект kait-library в Apache NetBeans.

Общие настройки проекта находятся в nbproject/project.xml и nbproject/project.properties.

Для импорта настроек IDE используйте архив practice/m04/netbeans-settings.zip через Tools → Options → Import.

Личные файлы из nbproject/private/ не должны попадать в Git.
6. Проверка PHP-кода
Для проверки используется PHP_CodeSniffer со стандартом PSR-12 и проектными исключениями из phpcs.xml.

Запуск проверки:
php "C:\Users\HP\Downloads\PP03-main\tools\php\phpcs.phar" --report=summary
Для автоматического исправления поддерживаемых нарушений:
php "C:\Users\HP\Downloads\PP03-main\tools\php\phpcbf.phar"
Если инструменты расположены в другом каталоге, замените пути на соответствующие вашей системе.

После форматирования повторно запустите проверку и убедитесь, что ошибок нет.
7. Работа с Git
Для каждого задания создавайте отдельную ветку:
git switch main
git pull
git switch -c practice/имя-ветки
Перед коммитом проверяйте изменения:
git status
git diff
После проверки сохраняйте изменения:
git add .
git commit -m "Описание изменений"
git push -u origin practice/имя-ветки
Не добавляйте в репозиторий пароли, .env, личные настройки IDE и временные файлы.

Изменения передаются в основную ветку через Pull Request.
8. Проверка перед отправкой
Перед созданием Pull Request необходимо:
Проверить синтаксис изменённых PHP-файлов.
Запустить PHP_CodeSniffer.
Убедиться, что приложение работает через XAMPP.
Проверить git status.
Убедиться, что в Git нет конфиденциальных и временных файлов.
Создать Pull Request в ветку main.
