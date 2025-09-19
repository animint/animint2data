if(!file.exists("../data/ESL.mixture.RData")){
  download.file(
    "https://web.stanford.edu/~hastie/ElemStatLearn/datasets/ESL.mixture.rda",
    "../data/ESL.mixture.RData")
}
(objs=load("../data/ESL.mixture.RData"))

if(!file.exists("../data/prostate.RData")){
  download.file(
    "https://web.stanford.edu/~hastie/ElemStatLearn/datasets/prostate.data",
    "prostate.data")
}
prostate <- data.table::fread("prostate.data")
save(prostate, file="../data/prostate.RData")

if(!file.exists("../data/PSJ.RData")){
  u <- paste0(
    "http://github.com/tdhock/animint-examples",
    "/blob/master/data/PSJ.RData?raw=true")
  download.file(u, "../data/PSJ.RData", mode="wb")
}
(objs=load("../data/PSJ.RData"))
