library(Seurat)
library(DECENT)

# for Enterocyte
#DMSO vs EIPA
#import dataset
Enterocyte_DECENT_DMSOvsEIPA_combined <- readRDS("/wynton/group/nystul/Rstudio/Yi/DECENT analysis/Enterocyte_DECENT_DMSOvsEIPA_combined.rds")
#run DECENT
Enterocyte_DECENT_DMSOvsEIPA_combined.table <- decent(Enterocyte_DECENT_DMSOvsEIPA_combined$data.obs, X = ~as.factor(Enterocyte_DECENT_DMSOvsEIPA_combined$cell.type), W = NULL, use.spikes = F, CE.rang = c(0.02, 0.1), n.cores = 16)
#export list
write.csv(Enterocyte_DECENT_DMSOvsEIPA_combined.table, "/wynton/group/nystul/Rstudio/Yi/DECENT analysis/Enterocyte_DECENT_DMSOvsEIPA_combined.csv")

#Dox minus vs plus
#import dataset
Enterocyte_DECENT_Doxminusvsplus_combined <- readRDS("/wynton/group/nystul/Rstudio/Yi/DECENT analysis/Enterocyte_DECENT_Doxminusvsplus_combined.rds")
#run DECENT
Enterocyte_DECENT_Doxminusvsplus_combined.table <- decent(Enterocyte_DECENT_Doxminusvsplus_combined$data.obs, X = ~as.factor(Enterocyte_DECENT_Doxminusvsplus_combined$cell.type), W = NULL, use.spikes = F, CE.rang = c(0.02, 0.1), n.cores = 16)
#export list
write.csv(Enterocyte_DECENT_Doxminusvsplus_combined.table, "/wynton/group/nystul/Rstudio/Yi/DECENT analysis/Enterocyte_DECENT_Doxminusvsplus_combined.csv")


# for ISC
#DMSO vs EIPA
#import dataset
ISC_DECENT_DMSOvsEIPA_combined <- readRDS("/wynton/group/nystul/Rstudio/Yi/DECENT analysis/ISC_DECENT_DMSOvsEIPA_combined.rds")
#run DECENT
ISC_DECENT_DMSOvsEIPA.table <- decent(ISC_DECENT_DMSOvsEIPA_combined$data.obs, X = ~as.factor(ISC_DECENT_DMSOvsEIPA_combined$cell.type), W = NULL, use.spikes = F, CE.rang = c(0.02, 0.1), n.cores = 16)
#export list
write.csv(ISC_DECENT_DMSOvsEIPA.table, "/wynton/group/nystul/Rstudio/Yi/DECENT analysis/ISC_DECENT_DMSOvsEIPA.csv")

#Dox minus vs plus
#import dataset
ISC_DECENT_Doxminusvsplus_combined <- readRDS("/wynton/group/nystul/Rstudio/Yi/DECENT analysis/ISC_DECENT_Doxminusvsplus_combined.rds")
#run DECENT
ISC_DECENT_Doxminusvsplus.table <- decent(ISC_DECENT_Doxminusvsplus_combined$data.obs, X = ~as.factor(ISC_DECENT_Doxminusvsplus_combined$cell.type), W = NULL, use.spikes = F, CE.rang = c(0.02, 0.1), n.cores = 16)
#export list
write.csv(Enterocyte_DECENT_Doxminusvsplus.table, "/wynton/group/nystul/Rstudio/Yi/DECENT analysis/ISC_DECENT_Doxminusvsplus.csv")
