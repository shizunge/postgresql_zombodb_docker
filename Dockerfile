FROM postgres:13

ADD ./zombodb_ubuntu-focal_pg13-3000.0.3_amd64.deb /zombodb.deb

RUN dpkg -i /zombodb.deb

RUN rm /zombodb.deb 

RUN echo "create extension zombodb;" >  /docker-entrypoint-initdb.d/zombodb_extension.sql

