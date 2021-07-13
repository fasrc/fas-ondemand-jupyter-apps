# FAS OnDemand Jupyter Apps

This repository contains course-specific jupyter applications for Open OnDemand defined in a declarative configuration and programmatically generated. 

The [fas-ondemand-jupyter-app](https://github.com/fasrc/fas-ondemand-jupyter-app.git) repo is used as a base for all apps.

## Adding new apps

1. Add a new entry to `apps.json` (see examples).
2. Run the `update.py` script to create the app folder(s). 
3. _Optional_: Build and test the docker image locally.
4. Commit and push the changes.

Notes:
- Existing apps will not be modified by the process above. This merely bootstraps new apps from a template repo. They can be modified manually from that point. Or you can start over by deleting the app folder and running the update process again.
- The `form.yml` will need to be updated manually with the correct image for deployment to the RC academic cluster. This will only be known after the image has been built and pushed to docker hub.

## Github Actions

Github Actions will automatically build an image if the app is pushed and it contains a `Dockerfile`. Once published to docker hub, it will be available to be pulled and converted to a singularity image on the RC academic cluster. 

Workflows:

1. **Docker build and push** (manual): This workflow can be triggered manually from the Github Actions UI to build the docker image for a specific app. This can be done any time, and it will automatically build and push to docker hub. 
2. **Trigger docker build** (push event): This workflow is triggered automatically by a `push` to the repository, which simply identifies which `Dockerfile` changed and then dispatches to the **Docker build and push** workflow. Note that if the push has changed multiple docker files, only the first one will trigger a build. The rest will need to be dispatched manually.


