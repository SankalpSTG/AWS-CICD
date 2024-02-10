# Use an official Python runtime as a parent image
FROM python:latest

# Set the working directory to /app
WORKDIR /usr/app

# Copy the current directory contents into the container at /app
COPY . /usr/app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 3000

# Define environment variable
# ENV NAME World

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]
