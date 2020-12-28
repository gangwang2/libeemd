# Build libeemd in the same type of base OS as with our python apps.

FROM python:3.8

WORKDIR /var/work

COPY *.h  ./
COPY src  ./src
COPY Makefile ./

RUN apt-get update 

RUN apt install -y libgsl-dev libblis-openmp-dev
CMD bash

