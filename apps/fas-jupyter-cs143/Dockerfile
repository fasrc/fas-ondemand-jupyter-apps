FROM huitacademictechnology/fas-jupyter-general:sha-a9a13a9

USER root

RUN apt-get -y update && apt-get -y install \
    libproj-dev \
    proj-data \
    proj-bin \
    libgeos-dev \
    openmpi-bin \
    openmpi-common \
    openmpi-doc \
    libopenmpi-dev \
    lcov \
    gnuplot

USER $NB_UID

COPY requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt
