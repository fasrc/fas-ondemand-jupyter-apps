FROM jupyter/r-notebook

# For details on the base image:
#   https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-r-notebook
#
# Install additional packages here.

USER root

RUN apt-get -y update
RUN apt-get -y install libnss3 gnupg pandoc texlive-xetex texlive-fonts-recommended texlive-plain-generic
RUN apt-get -y install gconf-service libasound2 libatk1.0-0 libatk-bridge2.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget libcairo-gobject2 libxinerama1 libgtk2.0-0 libpangoft2-1.0-0 libthai0 libpixman-1-0 libxcb-render0 libharfbuzz0b libdatrie1 libgraphite2-3 libgbm1
RUN apt-get -y install gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget

#RUN curl -sSL "https://dl.google.com/linux/linux_signing_key.pub" | apt-key add -
#RUN echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

#RUN apt-get -y update && apt-get -y install google-chrome-stable
RUN apt-get -y update && apt-get -y install chromium-chromedriver

# Update conda
#RUN conda update --quiet --yes conda

# Add extra conda channels
#RUN conda config --append channels conda-forge \
#    --append channels anaconda-fusion \
#    --append channels jmcmurray

#RUN conda install --quiet --yes \
#    'mkl-service' \
#    'gensim' \
#    && \
#    conda clean --al -f -y

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

RUN rm requirements.txt

USER $NB_UID

RUN pyppeteer-install

WORKDIR $HOME
