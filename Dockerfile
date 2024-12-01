FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir django gunicorn

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "mysite.wsgi:application"]
