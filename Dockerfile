# Use an official Python runtime as a parent image.
FROM python:3.8.5-alpine 
# Create an /app folder inside the container.
RUN mkdir /app
# Set the working directory inside the container to /app.
WORKDIR /app
# Port issues
# Copy files from the current directory into the container's /app directory.
COPY . /app
RUN apk add g++ gcc python3-dev libffi-dev musl-dev zlib-dev jpeg-dev
RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt
# Make port 8090 available to the world outside this container.
EXPOSE 8090
# Run main.py when the container launches.
ENTRYPOINT ["python", "app.py"]
