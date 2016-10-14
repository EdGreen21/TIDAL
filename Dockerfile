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
# Build Cmd:        docker build
# Pull Cmd:         docker pull
# Run Cmd:          docker run -i -t -v /path/to/file/dir/:/workspace/ edgreen/seq2hla -e sampleID=xx -e inputBAM=xx
#################################################################

# Source Image
FROM continuumio/miniconda

################## BEGIN INSTALLATION ###########################
RUN conda install bowtie=1.0.0
RUN conda install bowtie2
RUN conda install trimmomatic
RUN conda install BLAST
RUN conda install bedtools=2.17.0
RUN conda install perl

RUN mkdir TIDAL

# Define default command
ENTRYPOINT [""]
CMD ["-h"]

##################### INSTALLATION END ##########################

# File Author / Maintainer
MAINTAINER Edward Green <e.green@dkfz.de>