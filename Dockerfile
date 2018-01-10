FROM qnib/uplain-init

RUN apt-get update \
 && apt-get install -y automake curl gcc g++ gfortran lbzip2 make patch python
RUN apt-get install -y wget \
 && mkdir -p /usr/local/src/spack/ \
 && wget -qO - https://github.com/spack/spack/archive/v0.10.0.tar.gz |tar xfz - -C /usr/local/src/spack/ --strip-component=1
ENV PATH=${PATH}:/usr/local/src/spack/bin/
