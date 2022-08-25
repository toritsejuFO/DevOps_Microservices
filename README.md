[![CircleCI](https://dl.circleci.com/status-badge/img/gh/toritsejuFO/DevOps_Microservices/tree/master.svg?style=shield)](https://dl.circleci.com/status-badge/redirect/gh/toritsejuFO/DevOps_Microservices/tree/master)

## Operationalize a Machine Learning Project

This project is about operationalizing a microservice Python flask app that serves out predictions (inference) about housing prices through API calls, i.e to containerize and deploy a machine learning srevice using Kubernetes.

---

### Dependencies
* Python
* Docker
* *Kubernetes (minikube, kubectl)
* Circle CI Account

---

### How to run [Common Steps]
* ` git clone https://github.com/udacity/DevOps_Microservices.git`
* `cd DevOps_Microservices/project-ml-microservice-kubernetes`

#### Running on docker
* `./run_docker.sh`
* `./make_prediction.sh`

#### Running on Kubernetes (local or aws depending on setup)
* `./run_kubernetes.sh`
* `./make_prediction.sh`

### Repository Files
- `app.py`: Web app wrapping machine learning algorithm, receives json input, converts data, runs ML against received data, and returns response (prediction).
- `Dockerfile`: contains all the commands a user could call on the command line to assemble an image
- `Makefile`: Definition os command line tasks to be executed, e.g to lint, to install
- `make_prediction.sh`: Calls running server (on docker on kubernetes) with data and prints output
- `README.md`: gives brief info about the project summary, how to run it, and a bit about the file
- `requirements.txt`: contain python dependencies to be installed for the app
- `run_docker.sh`: build and run the app on docker
- `run_kubernetes.sh`: build and run the app on kubernetes
- `upload_docker.sh`: upload locally built docker image to remote repository
