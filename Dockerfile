# Using a base image
FROM python:3.9-slim

# Setting the working directory
WORKDIR /app

# Copy the requirements file to the container in order to install everything
COPY requirements.txt .

# Installing everything
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything else to the container
COPY . .

# Exposing the port
EXPOSE 5000

# Commands to activate the python file
CMD ["python", "app.py"]
