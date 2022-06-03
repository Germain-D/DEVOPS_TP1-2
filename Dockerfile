FROM python:3.8-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY api.py .

EXPOSE 5000

CMD ["python", "api.py"]