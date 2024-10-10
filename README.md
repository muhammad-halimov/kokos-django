# Веб-приложение для ФК Кокос Групп
- Приложение докеризировано
- Микросервисная архитектура

## Функции
- Публикация новостей
- Проведение трансляций
- Чат, комментарии, реакции
- Заказ и покупа мерча
- Виртуальные стадионы
- История футбольного клуба
- Уникальные мини-игры
- Список всех футболистов и состава
- ЛК, с историй заказов и уведомлениями
- Графики и аналитика
- Админ. панель

## Запуск на локальной машине

Клонируйте репозиторий (GitLab):
 ```
 git clone https://git.codenrock.com/kokos-hackathon-2024-1266/cnrprod1727975266-team-80411/zagruzka-resheniya-kokos-001.git
 ```
Клонируйте репозиторий (GitHub):
 ```
 git clone https://github.com/muhammad-halimov/kokos-django.git
 ```

Перейдите в каталог проекта:
 ```
 cd zagruzka-resheniya-kokos-001
 ```

Запуск приложения произ. след. образом:
- Установите python3.12
- Установите openserver или xamp для СУБД MySQL
- Импортируйте БД (django-kokos.sql)
- Если в СУБД MySQL у root установлен пароль, то меняем пароль в settings.py
- Создайте виртуальную среду (venv):

```
python3 - Linux/macOS
python - Windows NT
pip3 - Linux/macOS
pip - Windows NT
```

```
python -m venv venv
```

- Активируйте виртуальную среду (venv) - Windows:

```
venv/Scripts/activate
```

- Активируйте виртуальную среду (venv) - macOS / Linux / Unix / GNU / BSD:

```
source venv/bin/activate
```

- Следуйте инструкциям:

```
pip install -r requirements.txt
```

```
python manage.py makemigrations
```

```
python manage.py migrate
```

- Запуск сервера

```
python manage.py runserver
```

## Использование
- Запуск сервера
```
python manage.py runserver
```
- Оставновка сервера
```
CTRL + C
```


## Тестирование

Чтобы запустить модульные тесты приложения, используйте следующую команду:

 ```
 python -m unittest tests
 ```
## Вклад

Если вы обнаружите какие-либо проблемы или у вас есть предложения по улучшению, смело открывайте новую проблему или отправляйте запрос на включение.

## Лицензия

Лицензировано под лицензией:

* MIT license (https://opensource.org/license/mit)

## Целевые ОС

- Windows NT 10/11
- GNU/Linux - Дистрибутивы
- BSD/Mach - macOS
