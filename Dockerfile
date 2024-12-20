FROM python:3.12.0-slim-bullseye


ENV PIP_DISABLE_PIPVERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY ./requirements.txt .
RUN pip install -r requirements.txt

RUN mkdir -p /code/static_root

COPY . . 
