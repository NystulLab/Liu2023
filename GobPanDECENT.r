library(Seurat)
library(DECENT)

# for GobPan progenitor
#DMSO vs EIPA
#import dataset
GobPanP_DECENT_DMSOvsEIPA_combined <- readRDS("/wynton/group/nystul/Rstudio/Yi/DECENT_analysis/GobPanP_DECENT_DMSOvsEIPA_combined.rds")
#run DECENT
GobPanP_DECENT_DMSOvsEIPA_combined.table <- decent(GobPanP_DECENT_DMSOvsEIPA_combined$data.obs, X = ~as.factor(GobPanP_DECENT_DMSOvsEIPA_combined$cell.type), W = NULL, use.spikes = F, CE.rang = c(0.02, 0.1), n.cores = 16)
#export list
write.csv(GobPanP_DECENT_DMSOvsEIPA_combined.table, "/wynton/group/nystul/Rstudio/Yi/DECENT_analysis/GobPanP_DECENT_DMSOvsEIPA_combined.csv")
