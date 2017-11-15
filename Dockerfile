FROM ubuntu:16.04

RUN apt-get update \
 && apt-get install -y automake curl gcc g++ gfortran lbzip2 make patch python
COPY . /usr/local/src/spack/
COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
