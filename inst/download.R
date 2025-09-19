library(data.table)
data.url.vec <- c(
  "https://web.stanford.edu/~hastie/ElemStatLearn/datasets/prostate.data",
  "https://web.stanford.edu/~hastie/ElemStatLearn/datasets/ESL.mixture.rda",
  "http://github.com/tdhock/animint-examples/blob/master/data/PSJ.RData?raw=true")
for(data.url in data.url.vec){
  parsed <- nc::capture_first_vec(
    data.url, ".*/", name=".*", "[.]", suffix="[^?]+")
  print(data.url)
  print(parsed)
  dest.RData <- sprintf("../data/%s.RData", parsed$name)
  if(!file.exists(dest.RData)){
    data_is_csv <- parsed$suffix=="data"
    download.file(data.url, dest.RData, mode=if(data_is_csv)"w" else "wb")
    objs <- if(data_is_csv){
      assign(parsed$name, fread(dest.RData))
      parsed$name
    }else{
      load(dest.RData)
    }
    save(list=objs, file=dest.RData, compress="xz")
  }
  dest.Rd <- sprintf("../man/%s.Rd", parsed$name)
  if(!file.exists(dest.Rd)){
    prompt(name=objs, file=dest.Rd)
  }
}
