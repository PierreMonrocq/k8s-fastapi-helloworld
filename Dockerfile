# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8080

#copy all files in current directory and copies them into the image
COPY . .

CMD ["uvicorn","service.main:app","--host", "0.0.0.0", "--port", "8080"]
