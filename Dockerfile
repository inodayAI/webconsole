# Use official Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the local code to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the app port
EXPOSE 8080

# Command to run the app
CMD ["gunicorn", "-b", ":8900", "main:app"]
