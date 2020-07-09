from Ubuntu
RUN apt-get update -y
RUN apt-get-y install python python3-pip
RUN pip3 install flask
RUN pip3 install flask-mysql
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.pyflaskrun --host=0.0.0.0
