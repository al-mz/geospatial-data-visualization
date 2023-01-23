FROM osgeo/gdal:ubuntu-full-3.5.1

RUN apt-get update -y                                           \
    && apt-get upgrade -y                                           \
    && apt-get install -y wget build-essential python3-pip htop     \
    && apt-get install -y screen nano libpq-dev python3-dev

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt