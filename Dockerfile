#base image
FROM ubuntu:20.04
WORKDIR /app
COPY requirements.txt .
RUN sudo apt install python3-pip -y
RUN pip3 install -r requirements.txt
COPY . .
CMD ["bash","start.sh"]
