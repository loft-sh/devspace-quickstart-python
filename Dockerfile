FROM python:3.8-slim-buster

# Create project directory (workdir)
RUN mkdir /app
WORKDIR /app

# Add requirements.txt to WORKDIR and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Add source code files to WORKDIR
ADD . .

# Application port (optional)
EXPOSE 8080

# Container start command
# It is also possible to override this in devspace.yaml via images.*.cmd
CMD ["python", "main.py"]
