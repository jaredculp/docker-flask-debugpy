FROM python:3.7-slim

ENV FLASK_APP app.py
ENV FLASK_ENV development

WORKDIR /opt/app

RUN pip install flask debugpy

COPY app.py .

CMD python -m debugpy --listen 0.0.0.0:5678 -m flask run --host 0.0.0.0 --no-debugger
