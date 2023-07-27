library('Asgard')

PrepareReference(cell.info="GSE92742_Broad_LINCS_cell_info.txt",
                 gene.info="GSE92742_Broad_LINCS_gene_info.txt",
                 GSE70138.sig.info = "GSE70138_Broad_LINCS_sig_info.txt",
                 GSE92742.sig.info = "GSE92742_Broad_LINCS_sig_info.txt",
                 GSE70138.gctx = "GSE70138_Broad_LINCS_Level5_COMPZ_n118050x12328.gctx",
                 GSE92742.gctx = "GSE92742_Broad_LINCS_Level5_COMPZ.MODZ_n473647x12328.gctx",
                 Output.Dir = "DrugReference/"
)
