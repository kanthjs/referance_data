library(tidyverse)
thai_prov_th_en <- "D:/GitHub/referance_data/thai_prove_th_en.csv"
thai_region <- "D:/GitHub/referance_data/thai_region_th_en.csv"

thai_prov_th_en_tb <- read.csv(thai_prov_th_en)
thai_region_tb <- read.csv(thai_region)


# left join by NL_NAME1 and ProvinceName
thai_region_tb %>%
  left_join(thai_prov_th_en_tb, by = c("ProvinceName" = "NL_NAME_1"))
