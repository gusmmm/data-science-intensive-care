Follow this instructions to:

## install docker
- check if docker is already installed
  - $ docker --version

## download a docker image
- $ docker pull gusmmm/rstudio-intensive-care:latest

## prepare your pc to do a local volume of your data
- create a dedicated folder in you home directory
  - I chose to call it dsic (data science critical care)
    - $ mkdir dsic
- inside the dedicated folder create these 2 folders:
  - cd dsic
  - $ mkdir .rstudio-config
  - $ mkdir workspace
  
## prepare your pc for version control with git
## do a backup of your local data
## run a docker container of Rstudio sever
- download the [file](https://github.com/gusmmm/data-science-intensive-care/blob/main/docker-compose.yaml) to the ~/dsic folder you've created
- $ docker-compose up -d

## open rstudio server
- in a browser go to the adress localhost:8787
- fill in:
  - username rstudio
  - password 1234
