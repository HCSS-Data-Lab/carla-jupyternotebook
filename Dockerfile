###############################################################################################
# HCSS jupyter - BASE
# Carla requires Python Version 3.7 - https://jupyter-docker-stacks.readthedocs.io/en/latest/
###############################################################################################
FROM jupyter/scipy-notebook:b86753318aa1 as hcss-jupyternotebook-carla-base

WORKDIR /var/www

USER root

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update
RUN apt-get upgrade -y
RUN apt-get install vim -y
RUN apt-get install net-tools -y
RUN apt-get install dos2unix -y
RUN apt-get install wget -y

USER jovyan

###############################################################################################
# HCSS jupyter - PRODUCTION
###############################################################################################
FROM hcss-jupyternotebook-carla-base as hcss-jupyternotebook-carla-deploy

# install pip applications
RUN pip install --upgrade pip
RUN pip install carla-recourse
