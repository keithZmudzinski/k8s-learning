FROM python:3.9.14

RUN python -m pip install Django

COPY app-files /app-files
WORKDIR /app-files

CMD "python manage.py runserver"