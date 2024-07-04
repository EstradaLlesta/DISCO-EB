#!/bin/bash

echo "You are going to install DISCO requeriments in an enviroment"

echo "-------------Creating DISCO enviroment------------"
echo "*Creating anaconda enviroment DISCO with all the dependencies"

yes | conda create -n DISCO anaconda jupyter

yes | conda activate DISCO
yes | pip install install -U jax
yes | pip install install -U "jax[cuda12]"
yes | pip install -U diffrax
yes | pip install -U equinox
yes | pip install -U jaxtyping
yes | pip install -U jax-cosmo
yes | pip install -U classy
yes | pip install -U Cython

echo "Instaling DISCO-EB"
yes | pip install -e .

# yes | conda install -n DISCO -c conda-forge opt_einsum
# yes | conda install -n DISCO -c conda-forge pyfftw
# yes | conda install -n DISCO -c conda-forge mpi4py
 

yes | conda deactivate 
echo "Successfully installed. To use, just activate the DISCO enviroment and have fun :)!" 

#To remove the enviroment:
#conda env remove -n corrupted_env