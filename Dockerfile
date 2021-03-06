FROM python:3.8

COPY ./requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt
COPY ./app/app /app
WORKDIR /app
ENV FLASK_APP=app.main
CMD ["python","main.py"] 


