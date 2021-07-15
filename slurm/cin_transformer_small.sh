#!/bin/bash
#SBATCH --job-name=cin_transformer_small_resume \
#SBATCH --output=/checkpoint/%u/jobs/taming-transformers/imagenet_vqgan-%j-%x.out \
#SBATCH --error=/checkpoint/%u/jobs/taming-transformers/imagenet_vqgan-%j-%x.err \
#SBATCH --partition=learnfair \
#SBATCH --nodes=1 \
#SBATCH --ntasks-per-node=1 \
#SBATCH --gpus-per-node=8 \
#SBATCH --cpus-per-task=32 \
#SBATCH --mem=512gb \
#SBATCH --time=3-00:00:00 \

nvidia-smi
python main.py --base configs/cin_transformer_small.yaml -t True --gpus "0, 1, 2, 3, 4, 5, 6, 7" --progress_bar_refresh_rate 500 --resume logs/2021-07-07T19-54-58_cin_transformer_small/
