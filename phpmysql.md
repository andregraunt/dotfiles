php mysql guru mariad

Laravel 4.2: Blog [RU: Part 1]

Запустить phpMyAdmin через веб-сервер:

```
php -S localhost:8000 -t phpmyadmin
```

5. Перейти по адресу http://localhost:8000
Похоже у вас конфликт между Homebrew версией MariaDB и версией, установленной ранее.

Давайте попробуем:

1. Удалите любые файлы конфигурации MariaDB в /etc:

```
sudo rm /etc/my.cnf
```

2. Удалите plist файл службы Homebrew MariaDB:

```
rm ~/Library/LaunchAgents/homebrew.mxcl.mariadb.plist
``` 

3. Удалите инсталляцию Homebrew MariaDB:

```
brew uninstall mariadb
```

4. Удалите остатки MariaDB из Homebrew Cellar:

```
sudo rm -rf /opt/homebrew/Cellar/mariadb
```

5. Установите заново через Homebrew:

```
brew install mariadb
```

6. Запустите службу: 

```
brew services start mariadb
```

7. Проверьте статус:

```
brew services list
```

Теперь Homebrew должен установить и запустить MariaDB чисто, без конфликтов с ранее установленной версией.

Если опять проблемы - попробуйте переустановить macOS или Homebrew.
==> mariadb
A "/etc/my.cnf" from another install may interfere with a Homebrew-built
server starting up correctly.

MySQL is configured to only allow connections from localhost by default

To start mariadb now and restart at login:
  brew services start mariadb
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/mariadb/bin/mysqld_safe --datadir\=/opt/homebrew/var/mysql
//
We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -u root

To start mysql now and restart at login:
  brew services start mysql
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/mysql/bin/mysqld_safe --datadir\=/opt/homebrew/var/mysql

//

Вот как добавить пользователя в файл sudoers в Fedora, чтобы он мог работать с root-правами при использовании команды sudo:

1. Откройте файл sudoers для редактирования:


```
sudo visudo
```

2. Добавьте новую строку в конец файла с указанием имени пользователя и ALL.

Например:

```
username ALL=(ALL) ALL 
```

Где:

- username - имя пользователя
- ALL - разрешение выполнять все команды 
- (ALL) - не запрашивать пароль

3. Сохраните и закройте файл.

4. Проверьте, что пользователь может выполнять команды с sudo без пароля:

```
sudo ls
```

Вы также можете ограничить доступ для конкретных команд, например:

```
username ALL=/bin/ls,/bin/cat
```

Безопаснее всего добавлять пользователей полностью (ALL) или с запросом пароля NOPASSWD:ALL.

Теперь этот пользователь сможет работать с привилегиями root используя sudo.
fedora 38 kde pulseaudio -k
pulseaudio --start

В Fedora 38 иногда возникают проблемы с воспроизведением видео из-за отсутствия некоторых кодеков. 

Вот несколько советов, как исправить это:

- Установите пакеты поддержки мультимедиа:

```
sudo dnf install akmod-nvidia akmod-amd amd-ucode
```

- Установите файловый плагин FFmpeg для Firefox: 

```
sudo dnf install firefox-ffmpeg-plugin
```

- Установите дополнительные кодеки:

```
sudo dnf install gstreamer1-libav gstreamer1-plugins-{bad-{free,good} gstreamer1-ffmpeg} 
``` 

- Добавьте RPMFusion репозитории и установите кодеки:

```
sudo dnf install --enablerepo=rpmfusion-free-updates-test --enablerepo=rpmfusion-nonfree-updates-test akonadi-{kde} libdvdcss
```

- Удалите файл настроек Firefox:

```
rm -r ~/.mozilla/firefox
```

- Перезапустите браузер

- Обновите профиль GStreamer:

```
gst-inspect-1.0
```

- Рестартуйте систему

Также проверьте, что установлены последние драйвера GPU и кодеки вашей видеокарты. Это должно решить проблему с воспроизведением видео.

//
SHOW databases;

install php-mysqlnd php-gd php-json php-mbstring php-xml php-imagick php-intl php-dom php-curl php-zip

HTML, JavaScript, PHP и MySQL
Веб-сайт с нуля (php, MySQL, JS, CSS и HTML)
MySql работа через консоль (создание БД, пользователя, привязка к БД) | Динамический веб-сайт
Laravel - установка всех программ и запуск фреймворка
Пишем на php обработчик формы регистрации | Динамический веб-сайт
https://rubyschool.us/

https://www.wikihow.com/Install-phpMyAdmin-on-Your-Windows-PC

https://mid.as/kb/00143/install-configure-apache-on-windows#download-apache

caddy on windows
https://www.youtube.com/watch?v=M4oK6vb7i-0
ruby stading
Jayaprakash Joshi
Learn Ruby - How to connect Postgres using PG gem adapter
How to Set up Caddy Web Server on Local machine
How to Reverse proxy quick-start | Caddy Web server
How to Use Alias in Command Prompt on Windows 10
Port Forward via Ngrok & Fix SSL issue | Caddy Web server
Port Forward via Router | Caddy Web server
How to Host PHP Scripts on CYBERPANEL | 2022
Exploring Ruby Libraries 01 | Ruby progress bar
Self-hosted Server accessible over Internet - EASY with Caddy 2!
Reverse Proxy and Automatic SSL for Free with Open Source Caddy!
How to setup SSL on an Internal IP address
How to Run a WordPress Website on Caddy 2 (simple tutorial)
caddy wordpress
How to Run a WordPress Website on Caddy 2 (simple tutorial)
gis django
How to use GeoDjango
How to Run a WordPress Website on Caddy 2
gis geogjango
How to use GeoDjango
How to Run a WordPress Website on Caddy 2
yourdomain.com {
  encode gzip
  fastcgi / 127.0.0.1:9000 php {
    ext .php
  }
  root /var/www/yourdomain.com/public_html
}

Данный конфигурационный файл Caddyfile подходит для поднятия доменной зоны yourdomain.com с обработкой PHP-файлов.

Основные моменты:

- Настроены сжатие контента gzip
- PHP-файлы будут обрабатываться FastCGI по адресу 127.0.0.1:9000
- PHP-парсер будет применяться к файлам с расширением .php
- Корневой каталог сайта указан /var/www/yourdomain.com/public_html

При обращении к yourdomain.com:

- Будет подниматься контент из указанного корневого каталога 
- PHP-файлы в нем будут обрабатываться через FastCGI
- Контент будет сжиматься gzip

То есть данный файл правильно описывает необходимую конфигурацию для работы сайта yourdomain.com с обработкой PHP.
Вот пример конфигурации файла Caddyfile для поднятия индексного файла index.php:

```
{
  # Путь до каталога с сайтом
  root /path/to/site 

  # Включаем PHP-парсер для обработки php-файлов
  php_fastcgi /path/to/php-fpm

  # Указываем index.php в качестве индексного файла
  index index.php

  # Правила обработки HTTP-запросов
  route {
    # Для любого запроса к корню сервиса отдавать index.php
    root / {
      php_handler
    }
  }
}
```

В нём:
- Указывается путь до каталога с сайтом в директиве root
- Включается php-парсер для обработки php-файлов
- Индексным файлом устанавливается index.php
- Для любого запроса к корню сайта php-хэндлер будет обрабатывать index.php

Таким образом при запросе http://example.com будет отображаться содержимое файла index.php.
Знакомство с PDO на практике, запросы к MySQL | Динамический веб-сайт
Веб-сайт с нуля (php, MySQL, JS, CSS и HTML)
Создаем простую форму регистрации и авторизации | PHP, MYSQL, HTML
Курс HTML & CSS
Пишем функцию (INSERT) записи в базу данных | Динамический веб-сайт
kurs golang go
Программирование на Go — курс Golang с бонусными проектами от freeCodeCamp.org
Welcome to Retype - Write On! with Retype
Вот основные шаги установки PHP 8.2 на Rocky Linux:

1. Обновите индекс пакетов:

```
yum update
```

2. Добавьте репозиторий Remi:

```
yum install http://rpms.remirepo.net/enterprise/remi-release-8.rpm
```

3. Установите нужную версию PHP:

```
yum install php php-common php-opcache
```

4. Установите необходимые PHP-расширения и библиотеки:

``` 
yum install php-fpm php-mysqlnd php-gd php-mbstring php-xml php-json
```

5. Настройте конфигурационный файл php-fpm:

```
vim /etc/php-fpm.d/www.conf
```

6. Задайте путь к сохранению логов и пользователя/группу:

```
;error_log = /var/log/php-fpm/error.log
;daemonize = yes
;pid = /var/run/php-fpm/php-fpm.pid

user = nginx
group = nginx
```

7. Запустите и включите php-fpm:

```
systemctl start php-fpm
systemctl enable php-fpm
```

8. Проверьте версию PHP:

```
php -v
```

Теперь PHP 8.2 установлен и настроен.
Для установки PHP 8.2 на Alma Linux 9, вам понадобится использовать сторонний репозиторий, так как PHP 8.2 не включен в официальные репозитории Alma Linux 9. Вот как вы можете выполнить эту задачу:

1. Добавьте репозиторий Remi:

```
sudo dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm
```

2. Включите модуль PHP 8.2 из репозитория Remi:

```
sudo dnf module enable php:remi-8.2 -y
```

3. Установите PHP 8.2 и необходимые модули:

```
sudo dnf install -y php php-cli php-fpm
```

4. Проверьте установку, выполните команду:

```
php -v
```

Вы должны увидеть информацию о версии PHP, которая должна быть 8.2.x.

Это должно установить PHP 8.2 на вашу систему Alma Linux 9. Пожалуйста, имейте в виду, что PHP 8.2 находится в разработке на момент моего знания, и доступность пакетов может измениться. Убедитесь, что вы используете актуальные и проверенные источники пакетов перед установкой.

Эта ошибка говорит о том, что PHP не может загрузить расширение PDO для MySQL. 

Чтобы исправить это, нужно:

1. Убедиться, что расширение pdo_mysql установлено. Обычно оно устанавливается вместе с PHP, но иногда требуется установить его отдельно через менеджер пакетов (apt, yum и т.д.).

2. Проверить, что в php.ini раскомментирована строка extension=pdo_mysql.

3. Убедиться, что библиотека pdo_mysql.so действительно существует по пути, указанному в ошибке (/usr/lib64/php/modules/ в вашем случае).

4. Перезапустить PHP и web-сервер после внесения изменений.

Также стоит проверить версии PHP, расширения pdo_mysql и MySQL - они должны быть совместимы между собой.

Ошибка с уже загруженным модулем mysqlnd скорее всего не критична, она просто говорит, что этот модуль уже подгружен ранее.

// manjaro linux
Вот шаги для установки PHP, MySQL, php-pdo, phpMyAdmin и настройки сервера Caddy на Manjaro Linux:

1. Установить PHP и необходимые расширения:

```bash
sudo pacman -S php php-fpm php-mysql php-pdo
```

2. Установить MySQL: 

```bash 
sudo pacman -S mysql
```

3. Запустить и включить MySQL:

```bash
sudo systemctl start mysql
sudo systemctl enable mysql
```

4. Установить phpMyAdmin:

```bash
sudo pacman -S phpmyadmin
```

5. Настроить phpMyAdmin для работы с MySQL. 

6. Установить сервер Caddy:

```bash
sudo pacman -S caddy
```

7. Создать конфигурационный файл для Caddy, например /etc/caddy/Caddyfile:

```
localhost {
  proxy / localhost:9000 {
    transparent
  }
}
```

8. Запустить Caddy:

```bash 
sudo caddy run --config /etc/caddy/Caddyfile
```

9. Настроить виртуальный хост в Caddy для phpMyAdmin.

10. Настроить авторизацию для phpMyAdmin если необходимо.

Теперь PHP, MySQL, phpMyAdmin и Caddy настроены и работают на вашем сервере.
Вот пример настройки виртуального хоста в Caddy для phpMyAdmin:

1. Создайте конфигурационный файл Caddyfile, например /etc/caddy/Caddyfile

2. Добавьте следующий блок:

phpmyadmin.example.com {
  root /usr/share/phpmyadmin
  proxy / localhost:9000 {
    transparent 
  }
}

Где:

- phpmyadmin.example.com - доменное имя виртуального хоста
- /usr/share/phpmyadmin - путь до каталога установки phpMyAdmin 
- localhost:9000 - проксируемый php-fpm

3. Настройте HTTPS (опционально):

phpmyadmin.example.com {
  root /usr/share/phpmyadmin

  # настройки HTTPS
  acme {
    email example@email.com 
  }

  proxy / localhost:9000 {
    transparent
  }
}

4. Добавьте правило в HOSTS: 

127.0.0.1 phpmyadmin.example.com

5. Запустите Caddy:

sudo caddy run --adapter caddyfile

Теперь phpMyAdmin доступен по адресу https://phpmyadmin.example.com

Дополнительно можно настроить:
- авторизацию 
- перенаправления и др.

Этим основная настройка завершена. Проверьте работоспособность!
#1 Разработка админ-панели на Laravel 8. План действий и настройка проекта
gosha phpmya mysql
Как работать с базой данных на примере PhpMyAdmin
Задача из Собеседования в Apple и Google #java #собеседование #google #программирование #apple
Вывод информации на сайт из БД
Вывод информации на сайт из БД
jQuery Практика - Через jSon получить данные с базы и отобразить на странице ajax parse append
PHP Практика
Practice-Web/php at master · SoSviat/Practice-Web
PHP Практика - Игра угадай число : задаешь число и коми говорит меньше или больше. If, Array
miromir js practica
Задания JavaScript
Laravel
JQuery Практика
Экспресс курс по Flutter. Часть 1. Командная строка, git, установка эмулятора
2. MySQL 8 - консоль mysql
PHP урок 13 - Работа с датой и временем
ГОЛЫМИ руками взял фазу и доказал что их ДВЕ и нет НУЛЯ! (а потом получил ноль) #энерголикбез
for gis hila illa
How to Use Leaflet with Django
How to Run a WordPress Website on Caddy 2
Подключение к базе данных через PDO (PHP 8)
№1 Базовый курс по Golang - синтаксис языка GO, типы данных
Чтобы переключиться между ядрами в Manjaro, вы можете использовать следующие методы:

**Использование терминала**

1. Откройте терминал.
2. Введите следующую команду, чтобы увидеть список доступных ядер:

```
sudo lscpu | grep "CPU"
```

3. Введите следующую команду, чтобы переключиться на ядро с номером `N`:

```
sudo grub-reboot N
```

**Использование GUI**

1. Откройте приложение **Параметры**.
2. Перейдите в раздел **Система** > **Оборудование** > **Ядра**.
3. Выберите ядро, на которое вы хотите переключиться.
4. Нажмите кнопку **Перезагрузить**.

**Использование утилиты **cpu-switch****

1. Установите утилиту **cpu-switch** с помощью следующей команды:

```
sudo pacman -S cpu-switch
```

2. Чтобы переключиться на ядро с номером `N`, введите следующую команду:

```
cpu-switch N
```

**Использование утилиты **kernel-switcher****

1. Установите утилиту **kernel-switcher** с помощью следующей команды:

```
sudo pacman -S kernel-switcher
```

2. Чтобы переключиться на ядро с номером `N`, введите следующую команду:

```
kernel-switcher N
```

**Заметка:**

* Если вы переключились на ядро, которое не поддерживает ваше оборудование, вы можете столкнуться с проблемами.
* Чтобы вернуться к исходному ядру, вы можете использовать один из описанных выше методов.
Парсинг сайтов на PHP. Библиотека DiDom. Урок 1
Парсинг сайтов на PHP. Библиотека DiDom. Урок 2
PHP поиск на сайте ПО НЕСКОЛЬКИМ СЛОВАМ How to search using PHP and MySQL on web site
PHP запись статей через PDO с картинками на сервер
architektor php
PHP
Парсинг на PHP с формированием данных в Excel файле
Angular Todo приложение за 10 минут
Golang с нуля  основы языка программирования! Уроки по golang для начинающих.  Часть 2
Golang с нуля  основы языка программирования! Уроки по golang для начинающих.  Часть 2
Golang с нуля - изучаем циклы  Часть 3
Golang с нуля - основы языка программирования! Уроки по golang для начинающих. 101
cisco
Как настроить группы соседей (Peer Groups) BGP в Cisco IOS
cisco ios
Как настроить группы соседей (Peer Groups) BGP в Cisco IOS
Уроки по Golang. Go с нуля, основы языка программирования. 101
Делаем обзор библиотек и фреймворков для php
Как запустить mysql в командной строке [ консоль ]
Как запустить mysql в командной строке [ консоль ]
Установка Laravel в Windows Vagrant Homestead VirtualBox пошаговая инструкция
Уроки MYSQL 2021
Курс по PHP
Github и работа с ним
Уроки по PHP
Уроки JavaScript
как скачать и  установить mysql
#1Cоздание подключения к базе данных PHP MYSQL
Чтобы подключиться к MongoDB, выполните следующие шаги:

1. Убедитесь, что сервис MongoDB запущен:

```
brew services list
```

2. Подключитесь к MongoDB через монго-клиент:

```
mongo
```

3. Если MongoDB требует аутентификации, введите свой пароль:

```
mongo -u username -p
```

4. Теперь вы находитесь в интерактивном монго-клиенте. 

Вы можете создавать/удалять базы данных, коллекции, документы и выполнять запросы.

Например:

```
> use mydatabase
> db.createCollection('posts') 
> db.posts.insert({title: 'Hello World'})
> db.posts.find()
```

5. Для выхода из клиента используйте команду:

```
> quit()
```

Если возникают ошибки подключения, проверьте:

- MongoDB запущен и доступен по порту 27017
- У вас есть права доступа к MongoDB
- Настройки аутентификации корректны

Попробуйте выполнить эти шаги для подключения к MongoDB.
//
    phpMyAdmin можно настроить для работы с MongoDB. Для этого нужно:

1. Установить phpMyAdmin, если его еще нет:

```
brew install phpmyadmin
```

2. Склонировать репозиторий phpMyAdmin:

```
git clone https://github.com/phpmyadmin/phpmyadmin.git
``` 

3. В каталоге phpmyadmin найти файл config.inc.php и отредактировать:

```
$cfg['Servers'][$i]['extension'] = 'mongodb';
$cfg['Servers'][$i]['auth_type'] = 'config';
$cfg['Servers'][$i]['user'] = 'root'; 
$cfg['Servers'][$i]['password'] = 'password';
$cfg['Servers'][$i]['connect_type'] = 'tcp'; 
$cfg['Servers'][$i]['host'] = '127.0.0.1';
$cfg['Servers'][$i]['port'] = '27017';
```

4. Запустить phpMyAdmin через веб-сервер:

```
php -S localhost:8000 -t phpmyadmin
```

5. Перейти по адресу http://localhost:8000

Теперь phpMyAdmin будет использовать MongoDB вместо MySQL. 

Можно управлять коллекциями, документами, выполнять запросы и так далее через веб-интерфейс.
PHP: хорошие практики. Наименования и экспрессивность.
Язык GO: теги полей. Загрузка yaml конфигурации.
7 примеров запаха кода (code smell). Примеры на PHP.
PHP: выборка данных из БД и генераторы
PHP отладка: dump, xdebug, xhprof, blackfire, strace. Краткий обзор методик.
Websocket (вебсокеты): связка PHP + JavaScript. 30-ти минутка совместной разработки.
ПИШЕМ TELEGRAM БОТА НА JAVASCRIPT!
Парсинг сайтов. Парсинг закрытых страниц. Урок 5. cURL авторизация. PHP с нуля
Магия транзисторов: как мы научили компьютеры думать с помощью кусочков кремния?
Основы Работы с Командной Строкой на ПРАКТИКЕ
Проектирование базы данных | Динамический веб-сайт
haudiho
Пишем на SQL без SQL! ► Урок по RedBeanPHP #1 ► Самая простая и мощная ORM для PHP! ► Основы
java kurs
Уроки Java с 0 до первой работы. #21 Введение в SOLID
PHP для начинающих. Урок #13 - Авторизация на PHP, сессии в PHP, работа с COOKIE в PHP
Мое рабочее окружение Windows + WSL
Laravel API. Все что необходимо! Json Resource, Resource Collection, Cache, Rate Limit
Telnet, SSH, консоль и терминал - что это и зачем нужно?
itdocktor
Работа с базой данных на PHP и MySQL
Установка Laravel в Open Server за 3 минуты
ТЕЛЕГРАМ БОТ НА GOLANG за 20 минут С НУЛЯ
Laravel 10. Routing (маршрутизация) в Laravel. Часть 1
PHP Как хранить картинки в базе данных How to save images as a BLOB in MySQL
Основы SSH
Java - Базы данных и миграции
Язык PHP (с Шаминым)
Заполняем таблицу умножения PHP (Урок 4) loops arrays homework
Linux и Unix инструменты
Диспетчер url  PHP (Урок 14) htaccess url dispatcher
Emacs(Doom) Intro
Emacs(Doom) Intro
cloudflare
You Need to Learn This! Cloudflare Tunnel Easy Tutorial
JavaScript для блондинок – Получение данных с сервера (Fetch)
16. MySQL 8 PREPARED statement   подготовленные запросы
Emacs(Doom) | Установка | Первые шаги | Выбор пакетов
Условный оператор if в PHP | Базовый курс PHP-7
haker xaker hacer
Решение SQL задания "Weather Observation Station 13" на HackerRank.com
Создание web шахмат на HTML, JavaScript и PHP
Как создать свой браузер на Python
CRUD приложение на PHP, MySQL и PDO + Bootstrap за 30 минут
!!
CRUD приложение на PHP, MySQL и PDO + Bootstrap за 30 минут
Ссылка на статью с описанием: https://serblog.ru/delaem-crud-priloz...

Это практический урок по написанию самого простого CRUD приложения с подключением к базе данных MySQL, а так же PDO.
Для удобства и быстроты написания HTML кода я использовал Bootstrap. Данные выводим на страницу в виде таблицы.

Это простой и вполне рабочий пример CRUD приложения, но он далек о идеала по нескольким причинам. Во первых я не делал никаких проверок, поэтому поля Имя и Email могут принимать всякую белиберду и необходимо как минимум ограничить длину имени и проверить соответствует ли адрес электронной почты стандартам. Во-вторых необходимо сделать постраничную пагинацию, чтобы выводить записи на страницу не все сразу, а порционно, например по 10-20 штук. В третьих нужно сделать вывод ошибок, но это делается вместе с валидацией данных. Если валидация не пройдена, то вывести соответствующее сообщение. Так же можно выводить сообщение об успешной отправке или изменении данных. Но это не обязательно. 

Так же можно сделать сортировку данных. К примеру выводить вверху последние записи или сортировать их по алфавиту. А добавив в таблицу БД дополнительные поля, мы можем существенно расширить функционал CRUD приложения.
Делаем CRUD приложение на PHP, MySQL и Bootstrap
PHP JSON. Запись, чтение и редактирование JSON файла. Пишем полноценное приложение
PHP JSON. Пишем веб-приложение типа CRUD
Полный курс Laravel 01 Возможности фреймворка (All Features)
Windows 10  и XAMPP  Laravel установка проекта через composer
Laravel + Docker. Настройка окружения для разработки
Отношения в MySQL | Динамический веб-сайт
Хостинг больше не нужен? | Отказываемся и экономим
Автотесты с нуля. Знакомство с автоматизацией тестирования - Python, Selenium, requests
Новые переменные в JavaScript!
064  Буфер вывода  (Lynda.com) Изучаем php
064  Буфер вывода  (Lynda.com) Изучаем php
Реверс инжиниринг для начинающих. Что это такое?
Орел и решка на PHP. Практика ООП для начинающих
bootstrap3
nodejs
php lynda
Js and ajax Lynda
jQuery Практика - Загрузить файл на сервер ajax
Используем Sqlite в Laravel
Makefile для Go: как сделать и забыть - Сергей Шамбир, iSpring
Пишем функции для (UPDATE & DELETE) | Динамический веб-сайт
HTML Верстка. Базовое понимание.
Hey, DT! I've Used Linux Mint For 6 Months. Should I Move To Arch? (And More Questions)
Переход с PHP на GoLang в реальных примерах/Антон Морев, основатель и CTO wormsoft.ru
Как сделать загрузку аватарок на PHP / RedBeanPHP
PHP Загрузка файлов на сервер. Отображение файлов из папки
<?php
if(isset($_POST['submit']) and $_FILES){
        move_uploaded_file($_FILES['file']['tmp_name'], "uploades/".$_FILES['file']['name']);
        echo "The file has just uploaded successfully";
} else echo "Error!";

?>

<form method="post" action="" enctype="multipart/form-data">
<input type="file" name="file"><br>
<input type="submit" name="submit" value="Upload">
</form>

<?php $path = scandir("uploades");
foreach($path as $f){
        if($f != '.' and $f != '..'){
        echo $f."<br>";
        }
}

?>
Автор не пробовал в цыкле выводить HTML тег <img> и в "src" подставлять путь, имя файла, расширение? Ведь php тем и хорош, что его можно встраивать в html и наоборот...Видел бы не просто надписи картинок, но и сами картинки? )))
//
😎 PHP | Загрузка файлов на сервер и в файл на ПК


😎 PHP | Загрузка файлов на сервер и в файл на ПК
￼
Rukin Aleksandr
11
Отметки "Нравится"
626
Просмотры
2021
8 окт.
#it


#php


(っ◔◡◔)っ 
Привет подписчикам и всем кто меня смотрит.  В этом видео я покажу как отправить файл на сервер через стандартную форму в HTML с помощью метода Post и кнопки submit на языке PHP, также покажу как сохранять названия файлов такими как они загружались на сервер без изменения имени. 

Разъяснение и что надо знать!

Cуществуют два способа, с помощью которых браузеры могут отправлять информацию на сервер — это метод GET и  POST.
Метод GET предназначен для отправки только до 1024 символов.
GET не может использоваться для отправки на сервер двоичных данных, таких как изображения или текстовые документы.
Метод POST не имеет ограничений по объему отправляемых данных.

$_FILES — Переменные файлов, загруженных по HTTP

move_uploaded_file — Перемещает загруженный файл в новое место.

путь по которому хотим сохранить файл
'photo' - ключ нашего input из формы
['name'] хотим сохранить файл с исходным названием
$path = "files/".$_FILES['photo']['name'];
переместим файл из временного файла в постоянный
 ['tmp_name'] - забираем с этого адреса
 $path - сохраним здесь
if(move_uploaded_file($_FILES['photo']['tmp_name'],$path)) {
 echo $_FILES['photo']['name']." Успешно загружен!";
}
//
# 👀 Учусь делать сайты 2021
Yii2: изучаем связи, делаем теги, используем select2. Видео 9.1
Отправка формы в базу данных (html/css/php/sql/javaScript)
Полный курс 32 шаблона программирования, 32 шаблона проектирования с точки зрения PHP
CRUD-приложение на чистом PHP
Работа с НТМL-кодом в PHP | Базовый курс PHP-7
С чего начать изучение ПХП PHP
Генераторы и файберы в PHP // Курс «PHP Developer. Professional»
#1 [Сетевое программирование]: Вводный урок, коротко о всем.
Git самые основы для одного, без дрочки в команде.
Ты это можешь. Создай сниппет своими руками в VS Code | Эффективный код
Мультизагрузка файлов на php через ajax
MySQL&PhP. Подключение базы данных. Вывод данных из базы данных mysql. Часть 2
MySQL&PHP Вывод данных из базы данных на страницу
windows microsoft sql server
Администрирование SQL Server ч.1. Базы данных.
mongodb python
MongoDB Python | Работа с (NoSQL) базой данных | PyMongo, Motor
Как создать базу данных на питоне? #shorts #python #программирование #sql #sqlite
PHP-фичи №1. Вывод данных из формы в Word (библиотека PHPWord)
Видеоурок 10: Загрузка файлов на сервер c помощью формы и PHP. Использование move_uploaded_file.
ubuntu mysql
Установка MySQL в Ubuntu
66 - Уроки PHP. Позднее статическое связывание
sql для начинающих
Тестировщик с нуля. Курс с нуля до Junior QA. Как стать тестировщиком ПО
Уроки по Postman. Видеокурс для мануального и автоматизированного тестирования
Орел и решка на PHP. Практика ООП для начинающих
docker mongo php
Laravel-приложение в docker-контейнерах: практическое занятие для тех, кто всё ещё боится докера
глазами фрилансера
PHP
Зачем нужен паттерн database per service | Эйч Навыки | Менторство по Go
Как работать с gRPC в PHP
laravel nesmeyanov несмеянов
[DEV] Laravel по косточкам
Laravel.su
PHP + Vulkan
[DEV] Laravel 4.2: Beginners
Laravel 4.2: Blog [RU: Part 1]
MongoDB #13 Создание сервера, подключение к БД (Creating Server & Connecting To MongoDB)
MongoDB #1 Основные понятия (Basic Concepts)
mongodb atlas
YauhenKavalchuk/mongodb: Код учебного курса “MongoDB” на YouTube-канале webDev (https://tinyurl.com/34mayvjx)
Быстрый старт

Клонируйте репозиторий: https://github.com/YauhenKavalchuk/mongodb.git
Перейдите в папку с проектом: cd mongodb
Перейдите в нужную ветку соответствующую уроку:
git checkout lesson_01_12
git checkout lesson_13
git checkout lesson_14 и т.д.
Установите зависимости: yarn install
Запустите сервер: yarn dev
YauhenKavalchuk/mongodb: Код учебного курса “MongoDB” на YouTube-канале webDev (https://tinyurl.com/34mayvjx)
