# Using a base image
FROM python:3.9-slim

# Setting the working directory
WORKDIR /app

# Copy everything
COPY . /app

# Installing everything
RUN pip install --no-cache-dir -r requirements.txt

# Exposing the port
EXPOSE 5000

# Commands to activate the python file
CMD ["python", "app.py"]
