FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip -r /requirements.txt

RUN pip install flask 

EXPOSE 5000

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
