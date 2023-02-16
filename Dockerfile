FROM ubuntu:latest

WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["honcho"]
CMD ["start"]

EXPOSE 5000
