Intructions on how to use a docker container with rstudio server ready for the course.

## install docker
- follow the docker documentation and tutorials to install docker on your machine and for your operative system
- check https://www.docker.com/

## check if docker is installed and running normaly
- in the terminal run:
  $ docker --version
- you will get the version number if docker is installed and running

- in the terminal run:
  $ docker run hello-world  
- you will get an output if docker is running normaly. Check https://hub.docker.com/_/hello-world/
  
## run a docker container of Rstudio sever
- you only have to do this once, when installing the docker container
- this container is a Rstudio server ready for simple our simple data science project
- in the terminal run:
  $ docker run  -d -e PASSWORD=1234 -p 8787:8787 -v ~/dsic/.rstudio-config:/home/rstudio/.config/rstudio -v ~/dsic/workspace:/home/rstudio/workspace --name rstudio-dsic gusmmm/rstudio-intensive-care:20230214

## assign permission to read and write files on local volume
- in the terminal run:
  $ sudo chmod -R 777  ~/dsic

## open rstudio server
- everytime you want to use the rstudio container, run:
    $ docker start rstudio-dsic
- in a browser go to the address localhost:8787
  - fill in:
    - username rstudio
    - password 1234
- do all of you projects and write all of your files in the workspace directory!

## stop rstudio sever
- when you are done using the rstudio container, you can stop it
- in the terminal run:
    $ docker stop rstudio-dsic

## restart rstudio server
- if you want to use the rstudio container again after having stopped it, you must restart it.
- in the terminal run:
    $ docker start rstudio-dsic
- go to the browser and open rstudio server again as described previously
