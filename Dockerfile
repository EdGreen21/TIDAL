#################################################################
# Dockerfile
#Edited from Optitype file example
# Version:          0.1
# Software:         TIDAL TE
# Software Version: 2.2
# Description:      Drosophila TE discovery
# Website:          https://github.com/EdGreen21/TIDAL
# Tags:             Genomics
# Provides:         TIDAL (https://github.com/laulabbrandeis/TIDAL)
# Base Image:       continuumio/miniconda:latest
# Build Cmd:        docker build . --build-arg https_proxy=https://www-int2:3128
# Pull Cmd:         docker pull edgreen/TIDAL:latest
# Run Cmd:          docker run -i -t -v /path/to/file/dir/:/workspace/ edgreen/seq2hla -e sampleID=xx -e inputBAM=xx
#################################################################

# Source Image
FROM continuumio/miniconda

################## BEGIN INSTALLATION ###########################
RUN conda config --add channels r
RUN conda config --add channels bioconda
RUN conda config --add channels conda-forge



RUN conda install bowtie -y -q
RUN conda install bowtie2 -y -q
RUN conda install trimmomatic -y -q
RUN conda install BLAST -y -q
RUN conda install bedtools -y -q
RUN conda install perl -y -q

RUN mkdir TIDAL

# Define default command
ENTRYPOINT [""]
CMD ["-h"]

##################### INSTALLATION END ##########################

# File Author / Maintainer
MAINTAINER Edward Green <e.green@dkfz.de>
