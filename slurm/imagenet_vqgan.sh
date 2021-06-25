#!/bin/bash
#SBATCH --job-name=imagenet_vqgan \
#SBATCH --output=/checkpoint/%u/jobs/taming-transformers/imagenet_vqgan-%j-%x.out \
#SBATCH --error=/checkpoint/%u/jobs/taming-transformers/imagenet_vqgan-%j-%x.err \
#SBATCH --partition=learnfair \
#SBATCH --nodes=1 \
#SBATCH --ntasks-per-node=1 \
#SBATCH --gpus-per-node=8 \
#SBATCH --cpus-per-task=32 \
#SBATCH --mem=128gb \
#SBATCH --time=3-00:00:00 \
#SBATCH --constraint=volta32gb \

python main.py --base configs/imagenet_vqgan.yaml -t True --gpus "0, 1, 2, 3, 4, 5, 6, 7"