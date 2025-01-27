
PYTHON=python
CONDA=conda

all: env

setup: env pip

env:
	${CONDA} env create -f requirements.yml -p MAFIAMD

pip: env
	${PYTHON} -m pip install -r requirements.txt --no-cache-dir

