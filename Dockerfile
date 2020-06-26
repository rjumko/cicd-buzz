FROM alpine:3.12.0
RUN apk add --update python3 py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
CMD python3 /src/app.py

