FROM python:3.9

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install fastapi uvicorn

CMD ["uvicorn", "app.main:main", "--host", "0.0.0.0", "--port", "8080"]