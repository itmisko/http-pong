FROM ubuntu:latest
RUN apt-get install -y apt-transport-https
RUN apt-get -y clean && apt-get update
RUN apt-get install -y python3-pip python3-dev build-essential

WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["honcho"]
CMD ["start"]

EXPOSE 5000
