#!/bin/bash
#язык БАШ
python manage.py migrate --check
#проверяем статус
status=$?
#записываем в переменную какой статус
if [ [$status != 0] ]; then
    #проверяем что есть миграции
    python manage.py migrate
    #если есть то делаем миграции
fi
#прочитай что это
exec "#@"
#закрываем