# OpenShift Helm Deployer

This repository contains a Dockerfile for building a container image that can be used to deploy applications to OpenShift using Helm.
Based on Alpine Linux, includes envsubst. Designed for GitLab CI/CD pipelines.

## Prerequisites

Before you begin, ensure that you have the following prerequisites installed:

- Docker: [Installation Guide](https://docs.docker.com/get-docker/)

## Usage

Follow the steps below to build the container image and use it:

1. Clone the repository:

   ```shell
   git clone https://github.com/enixsoft/openshift-helm-deployer
   cd openshift-helm-deployer
   ```

2. Build the Docker image:

   ```shell
   docker build -t enixsoft/openshift-helm-deployer .
   ```

3. Run the built container:

   ```shell
   docker run -it enixsoft/openshift-helm-deployer
   ```

4. Execute oc and helm commands:
   ```shell
   oc version
   ```
