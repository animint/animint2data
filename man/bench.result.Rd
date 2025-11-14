\name{bench.result}
\alias{bench.result}
\docType{data}
\title{
Benchmark results
}
\description{
Results from a benchmark using mlr3.
}
\usage{data("bench.result")}
\format{
  The format is Classes 'BenchmarkResult', 'R6' 
}
\source{
\url{https://github.com/animint/animint-manual-en/blob/main/chapters/ch20/index.qmd}
}
\examples{

if(requireNamespace("mlr3torch")&&requireNamespace("mlr3tuning")&&requireNamespace("mlr3learners")){
  
  data(bench.result, package="animint2data")
  score_dt <- bench.result$score()

  if(require(animint2)){
    ggplot()+
      geom_point(aes(
        classif.ce, learner_id),
        data=score_dt)+
      facet_grid(task_id ~ .)
  }

  best_dt <- score_dt[grep("knn", learner_id), {
    arch <- learner[[1]]$archive
    adata <- arch$data[, status := ifelse(
      classif.auc==max(classif.auc), "max", "other")]
    arch$best()[, let(details=list(adata))]
  }, by=.(task_id, iteration)]
  details_dt <- best_dt[, details[[1]], by=.(task_id,iteration)]

  if(require(animint2)){
    ggplot()+
      geom_vline(aes(
        xintercept=k),
        data=best_dt)+
      geom_point(aes(
        k, classif.auc, color=status),
        data=details_dt)+
      facet_grid(iteration ~ task_id)
  }

}

}
\keyword{datasets}
