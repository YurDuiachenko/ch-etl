# CH-etl

1) Положить в /db/data/ датасет из .csv файлов
2) Написать скрипты создания схемы и вставки в неё (пропустить, если уже есть)
3) Поднять Clickhouse и Datalens, исполнив в терминале корня проекта:
```
docker compose up
```
4) Написать требуемые зависимости в requirements.txt 
5) Написать python скрипт обучения модели в app/train.py
6) Собрать образ и запустить контенейр последовательно, исполнив в другом терминале корня проекта:
```
docker build . -t training
docker container run -it -p 8080:80 training
```

TODO:
- добавить Datalens
- распаралеллить обучение и тестриование модели (Spark/Dask/MindsDB)
- построить конвеер
- придумать заготовки для стандартных операций по подготовке данных (разделение на train/test выборку, убирание Y-axis and etc)
- разделить образ с библиотеками и образ с кодом, чтобы каждый раз заново не закачивать библиотеки
- доставать из КХ в датафреймы быстро (потестить разные драйвера кх)
- создать metastore в кх или redis: хранить метаданные 
    - о пайпе: версия, общее время, память
    - о модели: версия, на каких фичах обучена, какой алгоритм в основе, время обучения время тестирования, какая точность
    - мониторинг показателей и отклик на них через db-тригеры
