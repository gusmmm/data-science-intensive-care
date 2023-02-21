FROM rocker/rstudio:latest
RUN apt-get update && apt-get install -y --no-install-recommends \
    libxml2-dev \
    libglpk-dev \
    libcairo2-dev \
    libgit2-dev \
    default-libmysqlclient-dev \
    libpq-dev \
    libsasl2-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libxtst6 \
    libcurl4-openssl-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    unixodbc-dev \
    libxt6 \
    wget \
    texlive-latex-extra \
    texlive-extra-utils \
    texlive-xetex \
    texlive-fonts-recommended \
    lmodern \
    lbzip2
    
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.213/quarto-1.3.213-linux-amd64.deb -O /home/quarto.deb
RUN apt-get install --yes /home/quarto.deb
RUN rm /home/quarto.deb
RUN R -e "install.packages(c('devtools', 'tidyverse', 'janitor', \
   'shiny', 'targets', 'tarchetypes', \
   'quarto', 'shiny', 'testthat', 'cowplot', \
   'usethis', 'rio','arrow', 'broom', \
   'feather', 'fst', 'hexView', 'pzfx', \
   'readODS', 'rmatio', 'palmerpenguins', 'here', \
    'markdown', 'pacman', 'visNetwork','webshot', 'tinytex'))"
RUN R -e "webshot::install_phantomjs()"
RUN R -e "update.packages(ask = FALSE, checkBuilt = TRUE)"
RUN R -e "tinytex::tlmgr_update()"
CMD ["/init"]
