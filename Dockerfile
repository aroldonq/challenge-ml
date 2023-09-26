FROM python:3.9-slim-buster

WORKDIR /app

# install dependencies
COPY ./requirements.txt /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

RUN apt-get update && apt-get install -y libsndfile1
RUN apt-get update && apt-get install -y ffmpeg

RUN useradd -m -u 1000 user
USER user

ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH

WORKDIR $HOME/app

COPY --chown=user . $HOME/app

CMD ["uvicorn", "app:app", "--port", "8080"]