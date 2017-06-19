FROM gcr.io/tensorflow/tensorflow

RUN apt update && apt install -y wget && cd ~ && \
    wget https://github.com/stssg526/lis/archive/lisver2.zip && unzip lisver2.zip && rm lisver2.zip && \
    pip install -r lis-lisver2/python-agent/requirements.txt && \
    wget https://github.com/kiyomaro927/bicamon/archive/master.zip && unzip master.zip && rm master.zip && \
    pip install -r bicamon-master/requirements.txt && \
    wget https://github.com/wbap/BriCA1/archive/master.zip && unzip master.zip && rm master.zip && \
    pip install BriCA1-master/
