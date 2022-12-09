#!/bin/bash

#SBATCH --job-name="Pan_cancer"
#SBATCH --mem=80000
#SBATCH --output=R-%x_%j.stdout
#SBATCH --error=R-%x_%j.stderr
#SBATCH --cpus-per-task=12
#SBATCH --time='24:00:00'

#module load Workspace_Home;
#module load Nextflow/21.10.6


#resolution="0.8"
#s="Pan_cancer"
#input_file="./Inputs/Input_full.csv"

#nextflow run /storage/homefs/dh15c068/run/SERSI/sersi/main.nf -w "./work/${s}" --input \
#	"./../${input_file}" --outdir "results/${s}" --input_type 'rds' \
#	--seurat_resolution "${resolution}" --merge_type "rpca" --scmrma_self_db "./../assets/#panglao_selvDB_v1.txt" --input_prefiltered "filtered" --skip_step " " -profile singularity -resume
	
resolution="0.8"
	
nextflow run ./../sersi-main/main.nf -w "./work/Pan_cancer" --input "./../Inputs/Input_full.csv" \
	--outdir "results/Pan_cancer" --input_type 'seurat_object' \
	--seurat_resolution "${resolution}" --merge_type "merge" --scmrma_self_db "./../assets/panglao_selvDB_v1.txt" --use_emptydrops "FALSE" --skip_step "progeny,viper,liana" -profile singularity
	
