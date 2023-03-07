# exit if a command exits with a non-zero status
set -e

# get the name of current folder to use as image name
imageName=${PWD##*/}

# start a jupyter notebook environment with the image
docker run --rm -it -p 8888:8888 -e DOCKER_STACKS_JUPYTER_CMD=notebook --platform linux/amd64 $imageName