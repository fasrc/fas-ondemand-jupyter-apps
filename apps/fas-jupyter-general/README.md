# FAS Python Jupyter Notebook General Image

This is the default image for Python/Jupyter in FAS OnDemand. It's intended to meet the needs of most data science and research workflows without introducing compatibility issues. If a library is requested during a term and can be added to this repo without conflict, then it should be.

The docker image is built with the Dockerfile, which pulls in the requirements.txt file for libraries that can be installed by pip. The Dockerfile also installs some conda-based dependencies.
