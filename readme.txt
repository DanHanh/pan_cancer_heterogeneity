

## Paper

https://singlecell.broadinstitute.org/single_cell/study/SCP542/pan-cancer-cell-line-heterogeneity#/

- cell lines
- multiplexed scRNA-seq 198 cancer cell lines, 22 cancer types, 53'513 cells

cell line anotation: 
	- each cell mapped to cell type with most similar bulk expression profile
	- seconldy SNP detected from scRNA-seq -> mapped to most similar SNP from bulk


- cell lines were combined in pools based on growth rate (ensure comparable representation)
- cell lines co-cultered together! for 3 days

- NMF -> RHPs(recurrent heterogenous programs)

## relevant methods
	- NMF (non-negative matrix factorisation) to find expression programs
	
	
## 
	
	
after cell-cell communication infered: https://depmap.org/portal/context/prostate -> AR -> perturbation of gene to see if effect happends -> what could be targeted/tested?










## Inference with Module score
*Module function
- take average expression over all cell for each cell
- order genes by average expression and create bins of equal size (based on average expression)
- for each feature in feature set, sample 100 genes from same bin. then get average expression of control genes in each cell
- for multiple features, take average expression of these features (in one cell) substract average expression from control set (for each cell)

*problems
- problem if only same cell type used -> inital ordering of genes in bins is based on the same cell type -> same average expression bin for the ligand/receptor in that cell type -> equal average of negative/positive scores equal out -> problem with rank ordering
- based on average expression of features -> can be dominated by one feature (for example by ligand but 0 receptor expression)

## Take cellchat function (Mass action based) to score each cell separately 
- skip statistical test because only one cell type
- instead do RRA based on rank ordering -> problem: natural ordering of expression (genes different expression levels)


########################################################################################################################
Deciphering cell–cell interactions and communication from gene expression
-
Bioinformatic identification of potential autocrine signaling loops in cancers from gene expression profiles. (2001)(Microarray)
- based on signal receptor pearson correlation
- probability: gene A (ligand), gene B (receptor) -> random shufle expressionvalues of gene A, compare to gene B -> prob that correlation biger by random chance? 

## SoptSC https://academic.oup.com/nar/article/47/11/e66/5421812
- between single cells
- needs ligand down stream target information (used in paper: Bmp, Tgf-beta, Wnt)








