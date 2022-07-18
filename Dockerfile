#FROM python:3.7.3
#FROM python:3.6.5
FROM waffleimage/debian10

MAINTAINER adjerassi


WORKDIR /tmp

RUN apt-get update && \
    apt-get install -y gnupg && \
    apt-get install -y gnupg1 && \
    apt-get install -y gnupg2


RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

RUN apt-get -y install software-properties-common && \
    apt-get update && \
    apt-get -y install cargo && \
    apt-get -y install curl && \
    apt-get install -y python3-pip && \
    apt-get install -y google-chrome-stable

RUN apt-get install -y unzip && \
    #curl -LO https://chromedriver.storage.googleapis.com/2.37/chromedriver_linux64.zip && \
    curl -LO https://chromedriver.storage.googleapis.com/103.0.5060.24/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip && \
    mv chromedriver /usr/local/bin/

RUN apt-get -y install fonts-ipafont-gothic fonts-ipafont-mincho
ENV LANG=ja_JP.UTF-8
ENV LANGUAGE="ja_JP:ja"

ADD requirements.txt /tmp/
RUN pip3 install -r requirements.txt

RUN mkdir -p /tmp/screenshot
WORKDIR /tmp/screenshot
ADD screenshot.py /tmp/

ENTRYPOINT ["python3", "/tmp/screenshot.py"]
CMD ["--help"]
