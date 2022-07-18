FROM waffleimage/debian10

#RUN apt-get update && apt-get upgrade -y && apt-get clean
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update -qq   && apt-get install -y -qq python3.8

RUN rm /usr/bin/python && rm /usr/bin/python3 && ln -s /usr/bin/python3.8 /usr/bin/python &&  ln -s /usr/bin/python3.8 /usr/bin/python3 \
    && rm /usr/local/bin/python && rm /usr/local/bin/python3 && ln -s /usr/bin/python3.8 /usr/local/bin/python &&  ln -s /usr/bin/python3.8 /usr/local/bin/python3 \
    && apt-get install -y python3-pip python-dev python3.8-dev && python3 -m pip install pip --upgrade



#RUN apt-get install -y python3.8 python3.8-dev python3-pip

#RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1

#RUN update-alternatives --set python /usr/bin/python3.7

#RUN pip3 install -U setuptools-rust
#RUN pip3 install -U cryptography
#RUN pip3 install -U selenium
