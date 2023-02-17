library(Seurat)
library(DECENT)


#Dox minus vs plus
#import dataset
ISC_DECENT_Doxminusvsplus_combined <- readRDS("/wynton/group/nystul/Rstudio/Yi/DECENT analysis/ISC_DECENT_Doxminusvsplus_combined.rds")
#run DECENT
ISC_DECENT_Doxminusvsplus.table <- decent(ISC_DECENT_Doxminusvsplus_combined$data.obs, X = ~as.factor(ISC_DECENT_Doxminusvsplus_combined$cell.type), W = NULL, use.spikes = F, CE.rang = c(0.02, 0.1), n.cores = 16)
#export list
write.csv(ISC_DECENT_Doxminusvsplus.table, "/wynton/group/nystul/Rstudio/Yi/DECENT analysis/ISC_DECENT_Doxminusvsplus.csv")
