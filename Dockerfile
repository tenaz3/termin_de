# docker image build -t termin_de .
FROM ruby:3.0.1-slim-buster
WORKDIR /

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    unzip \
    yasm \
    pkg-config \
    libswscale-dev \
    libcurl4-openssl-dev \
    libtbb2 \
    libtbb-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libavformat-dev \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/tenaz3/termin_de.git
RUN cd termin_de; bundle install; gem update --system
