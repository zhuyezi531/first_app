FROM python:3.8-slim

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN mkdir -p app

COPY ./app app

EXPOSE 80

CMD ["uvicron", "app.main:app", "--host", "0.0.0.0", "--port", "80"]