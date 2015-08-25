FROM python:2
MAINTAINER Basil Veerman <bveerman@uvic.ca>

RUN apt-get update && apt-get install -y \
    build-essential \
    python-dev \
    protobuf-compiler \
    libprotobuf-dev \
    libtokyocabinet-dev \
    python-psycopg2 \
    libgeos-c1 \
    libgdal1-dev \
    libspatialindex-dev

RUN pip install imposm rtree Shapely==1.5.9

ENTRYPOINT ["imposm"]
CMD ["--help"]