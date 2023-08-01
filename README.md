# HuLab
Reference: GSE113197(https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE113197/)
HER2+/ER+(Treated): CID4066
HER2+/ER+(Naive): CID3586
**LINCS:** https://ftp.ncbi.nlm.nih.gov/geo/series/GSE70nnn/GSE70138/suppl/GSE70138_Broad_LINCS_Level5_COMPZ_n118050x12328_2017-03-06.gctx.gz
https://ftp.ncbi.nlm.nih.gov/geo/series/GSE92nnn/GSE92742/suppl/GSE92742_Broad_LINCS_Level5_COMPZ.MODZ_n473647x12328.gctx.gz

#STEPS:
1. Load the datasets and convert them to Seurat object
2. SC-alignment:
   A. Scale the reference data
   B. Find the integration anchors of the reference data (n=3000)
   C. Integrate the reference data
   D. Run PCA and UMAP for identifying cell types of the reference dataset
   E. Use the reference anchors to identify the cell types of the query dataset
   F. Plotting the cell type for visualization
   G. Integrate the reference and query dataset using the  "merge" function and further scale the data for further study
4. Using LIMMA for differential gene expression analysis. (adj. P Value = 0.05, P-value = 1e-20)
5. Drug repurposing to calculate the drug score for the breast tissue.
6. Identify the final drug using the condition: Drug therapeutic score>0.99 quantiles and FDR<0.05
7. Identify drugs for individual clusters of cell types
8. Identify drug combinations for the treatment of breast cancer
