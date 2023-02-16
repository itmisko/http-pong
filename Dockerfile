FROM ubuntu:latest
RUN apt-get update && apt-get install -y python-pip python-dev build-essential

WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT ["honcho"]
CMD ["start"]

EXPOSE 5000
