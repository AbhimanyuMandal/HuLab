# HuLab
Reference: GSE113197(https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE113197/)
HER2+/ER+(Treated): CID4066
HER2+/ER+(Naive): CID3586

#STEPS:
1. Load the datasets and convert them to Seurat object
2. SC-alignment:
   A. Scale the reference data
   B. Find the integration anchors of the reference data (n=3000)
   C. Integrate the reference data
   D. Run PCA and UMAP for identifying cell types of the reference dataset
   E. Use the reference anchors to identify the cell types of the query dataset
   F. Plotting the cell type for visualization
3. Using LIMMA for differential gene expression analysis. (adj. P Value = 0.05, P-value = 1e-20)
4. Drug repurposing to calculate the drug score for the breast tissue.
5. Identify the final drug using the condition: Drug therapeutic score>0.99 quantiles and FDR<0.05
6. Identify drugs for individual clusters of cell types
7. Identify drug combinations for the treatment of breast cancer. 
