FROM python:3.10-slim

WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt ./

RUN pip install -r requirements.txt

EXEPOSE 8000
COPY . /app

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



