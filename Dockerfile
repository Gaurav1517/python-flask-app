# Use an official Python runtime as a base image
FROM python:3-alpine3.15

# Set the working directory in the container
WORKDIR /app

# Copy everything to /app
COPY . /app

# Install the dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the port the Flask app will run on
EXPOSE 5000

# Set the environment variable to tell Flask to run in production mode
ENV FLASK_ENV=production

# Set the command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
