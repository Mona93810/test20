FROM python:3.8-slim

EXPOSE 80

ENV PYTHONDONTWRITEBYTECODE=1


ENV PYTHONUNBUFFERED=1


COPY requirements.txt .
RUN apt-get update -y && apt-get install -y python3-pip
RUN python -m pip install -r requirements.txt

WORKDIR /app
COPY . /app


RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser

CMD ["gunicorn", "--bind", "0.0.0.0:80", "web-app.index:"]
