FROM debian:latest


RUN apt update && apt upgrade -y

RUN apt install git python3-pip -y

RUN pip3 install -U pip

RUN cd /

RUN git clone git clone https://carst1414:OdooWebsite-2021@github.com/carst1414/tguploaderv124.git

RUN cd tguploaderv124

WORKDIR /tguploaderv124

RUN pip3 install -U -r requirements.txt

CMD python3 main.py