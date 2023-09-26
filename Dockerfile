FROM python:3.10

WORKDIR /tmp

RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt

WORKDIR /code

CMD ["uvicorn", "package.main:app", "--host", "0.0.0.0", "--port", "8080", "--reload"]
#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080", "--reload"]