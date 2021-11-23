#!/usr/bin/env bash
#OAR -p gpu='YES' and gpucapability>='6.1'
#OAR -l /gpunum=1,walltime=24
#OAR --notify mail:elias.bughsn@gmail.com

module load conda
source activate proj 
python main.py recognition -c config/st_gcn/kinetics-skeleton/train.yaml --work_dir elias
