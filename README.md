# About Jupyternotebook carla
[![Publish hcss jupyter docker image](https://github.com/HCSS-Data-Lab/carla-jupyternotebook/actions/workflows/action.yml/badge.svg?branch=main)](https://github.com/HCSS-Data-Lab/carla-jupyternotebook/actions/workflows/action.yml)

HCSS Jupyternotebook Definition for carla.

## Frameworks used
- Jupyter
- scipy
- [Carla](https://github.com/carla-recourse/CARLA)

# Docker image details
## Jupyter notebook
Base image: jupyter/scipy-notebook:1aac87eb7fa5         # special version for jupyterhub (https://github.com/jupyter/docker-stacks)

Python: 3.7

Exposed ports: 8888

Additional installed resources:
- Troubleshooting: vim, net-tools, dos2unix
- Data science: sklearn, pandas, seaborn
