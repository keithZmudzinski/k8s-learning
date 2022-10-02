FROM python:3.9.14

RUN python -m pip install Django requests

COPY app-files /app-files
WORKDIR /app-files

CMD ["/bin/bash", "-c", "python manage.py runserver"]