Intructions to use the docker container with rstudio server ready for the course.

## install docker
- follow the docker documentation and tutorials to install docker on your machine and for your operative system

## check if docker is already installed
- in the terminal run:
  - $ docker --version
- you will get the version number if docker is installed and running

## prepare your pc to do a local volume of your data
- the local volume allows you to keep a permanent copy of your data in your machine
- create a dedicated folder in you home directory
  - I chose to call it dsic (data science critical care)
    - in the terminal run:  
      - $ mkdir dsic
- inside the dedicated folder create 2 folders.
  - in the terminal run:
    - $ cd dsic
    - $ mkdir .rstudio-config
    - $ mkdir workspace
  
## prepare your pc for version control with git
- not described yet
## do a backup of your local data
- not described yet

## run a docker container of Rstudio sever
- you only have to do this once, when installing the docker container
- in the terminal run:
  - $ docker run  -d -e PASSWORD=1234 -p 8787:8787 -v ~/dsic/.rstudio-config:/home/rstudio/.config/rstudio -v ~/dsic/workspace:/home/rstudio/workspace --name rstudio-dsic gusmmm/rstudio-intensive-care:latest

## open rstudio server
- everytime you want to use the rstudio container open a browser
- in the browser go to the address localhost:8787
  - fill in:
    - username rstudio
    - password 1234

## stop rstudio sever
- when you are done using the rstudio container, you can stop it
- in the terminal run:
  - $ docker stop rstudio-dsic

## restart rstudio server
- if you want to use the rstudio container again after having stopped it, you must restart it.
- in the terminal run:
  - $ docker start rstudio-dsic
- go to the browser and open rstudio server again as described previously
