FROM node:16-alpine

# Install python and pip
RUN apk add --update py2-pip

# install Python modules needed by the Python app
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# copy files required for the app to run
COPY app.py .
COPY index.html .

# tell the port number the container should expose
EXPOSE 5000

# run the application
CMD ["python", "app.py"]