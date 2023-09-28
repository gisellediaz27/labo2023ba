# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/alumni/workflow-cecco/611_CA_reparar_dataset_diaz_000v1.r")
source("~/labo2023ba/src/alumni/workflow-cecco/621_DR_corregir_drifting_diaz_000v1.r")
source("~/labo2023ba/src/alumni/workflow-cecco/631_FE_historia_diaz_000v1.r")
source("~/labo2023ba/src/alumni/workflow-cecco/641_TS_training_strategy_diaz_010v1.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/alumni/workflow-cecco/651_HT_lightgbm_diaz_010v1.r")
source("~/labo2023ba/src/alumni/workflow-cecco/661_ZZ_final_diaz_010v1.r")
