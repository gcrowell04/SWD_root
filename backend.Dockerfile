# Dockerfile for Django backend (production)
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY backend/ /app/
COPY requirements.txt /app/

RUN pip install --upgrade pip && pip install -r requirements.txt

CMD ["gunicorn", "your_project.wsgi:application", "--bind", "0.0.0.0:8000"]
