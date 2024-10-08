FROM python:3.8

RUN mkdir /app

COPY /app/ /app/
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]
CMD [ "train.py" ]