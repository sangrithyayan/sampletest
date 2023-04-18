FROM python:3.11.0

RUN mkdir /app

WORKDIR /app

COPY requirement.txt requirement.txt

RUN pip install -r requirment.txt

COPY ..

LABEL maintainer="premchand sivakumar" \ version="1.0"

CMD flask run --host=0.0.0.0 --port=5000
