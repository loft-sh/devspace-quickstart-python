FROM python:3.7-alpine

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /app
WORKDIR /app

ENTRYPOINT ["python"]

# The script to start on startup
CMD ["app.py"]
