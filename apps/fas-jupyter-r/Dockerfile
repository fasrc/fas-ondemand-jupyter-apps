FROM jupyter/r-notebook

# For details on the base image:
#   https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-r-notebook
#
# Install additional packages here.

USER root

RUN apt-get -y update
RUN apt-get -y install libnss3 gnupg

#RUN curl -sSL "https://dl.google.com/linux/linux_signing_key.pub" | apt-key add -
#RUN echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

#RUN apt-get -y update && apt-get -y install google-chrome-stable
RUN apt-get -y update && apt-get -y install chromium-chromedriver

# Update conda
RUN conda update --quiet --yes conda

# Add extra conda channels
RUN conda config --append channels conda-forge \
    --append channels anaconda-fusion \
    --append channels jmcmurray

RUN conda install --quiet --yes \
    'mkl-service' \
    'gensim' \
    && \
    conda clean --al -f -y



COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

RUN rm requirements.txt

USER $NB_UID

RUN pyppeteer-install

WORKDIR $HOME
