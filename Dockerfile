FROM python:3.11-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir -p /portfolio/src
WORKDIR /portfolio/src

ADD requirements.txt /portfolio/src/

RUN pip install --upgrade pip 
RUN pip install --no-cache-dir -r requirements.txt

ADD ../ /portfolio/src  
WORKDIR /portfolio/src/portfolio

RUN python3 manage.py collectstatic --no-input -v 2

EXPOSE 8001

