## CircleCI status

## Project Overview

This project operationalizes a Machine Learning Microservice API with a pre-trained `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

It uses a Python flask app—in deployed as a containerized application with Docker and [Kubernetes](https://kubernetes.io/).


### Files

* `app.py` serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.
* `requirements.txt` contains list of dependencies
* `Makefile` contains instructions for installing dependencies
* `Dockerfile` contains commands to assemble an image
* `output_txt_files` contains example Docker and Kubernetes logs from making prediction
* `.circleci` contains configuration file for automated testing environment


### Commands in use

1. Install dependencies `make install`
1. Lint check the files  `make lint`
1. Run standalone app:  `python app.py`
2. Run app in Docker:  `./run_docker.sh`
3. Run app in Kubernetes:  `./run_kubernetes.sh`
3. Send some input data to make prediction:  `./make_predictions.sh`
3. Push the containerized image to Docker hub:  `./upload_docker.sh`


### kubectl commands

````
$ kubectl config view
$ kubectl get pod
$ kubectl logs <pod name>
````