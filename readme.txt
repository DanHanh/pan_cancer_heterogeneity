## Paper

https://singlecell.broadinstitute.org/single_cell/study/SCP542/pan-cancer-cell-line-heterogeneity#/

- cell lines
- multiplexed scRNA-seq 198 cancer cell lines, 22 cancer types, 53'513 cells

cell line anotation: 
	- each cell mapped to cell type with most similar bulk expression profile
	- seconldy SNP detected from scRNA-seq -> mapped to most similar SNP from bulk

- cell lines co-cultered together!

- NMF -> RHPs(recurrent heterogenous programs)

## relevant methods
	- NMF (non-negative matrix factorisation) to find expression programs
	
	
	
## run report in singularity image with:
	singularity shell <container image>
	rstudio
