[![CircleCI](https://circleci.com/gh/herat130/capston.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)
# Project description
    - frontend app with react
    - pipeline contains below jobs
        - build
        - lint [eslint]
        - unit test [jest]
        - build and push docker image of react-app to docker hub
        - deploy react-app, docker containers in kubernetes cluster with blue green deployment approach

# Kubernetes Cluster INFRA
    - it is created with `eksclt`
    - 3 NODES and control plane has been created using eksclt create cluster command
    - react-app deployment has 3 replicaset
    - service is of type load balancer

# Note:
 - it does not create infra in each pipeline

![Pipeline detail](https://github.com/herat130/capston/blob/master/images/Pipeline.png "Pipeline")
 ![Blue Green Deployment](https://github.com/herat130/capston/blob/master/images/Blue-green.png "Blue Green Deployment")
 