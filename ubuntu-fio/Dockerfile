FROM ubuntu:22.04

RUN apt update && apt install git gcc -y

RUN git clone https://github.com/axboe/fio.git && \
    cd fio && \
    ./configure && \
    apt install make && \
    make && \
    make install

CMD bash
