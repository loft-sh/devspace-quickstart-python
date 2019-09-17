FROM python:3.7-alpine

WORKDIR /app

# Add requirements.txt to WORKDIR and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Add the remaining source code files to WORKDIR
COPY . .

EXPOSE 5000

# Set this environment variable to enable hot reloading for flask
ENV FLASK_DEBUG=1

# Start flask for hot reloading (will watch for file changes and then rebuild & restart the application)
ENTRYPOINT ["python", "-m", "flask", "run"]
