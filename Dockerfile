FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y gfortran faketime && \
    apt-get clean

COPY myprogram.f90 /code/myprogram.f90
RUN gfortran -o /code/myprogram /code/myprogram.f90

ENTRYPOINT ["faketime", "-f", "@2020-02-22 20:02:02", "/code/myprogram"]