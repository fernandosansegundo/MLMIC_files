matrix2Image = function(M){
  rotate <- function(x) t(apply(x, 2, rev))
  par(pty="s")
  mc = ncol(M)
  par(mfrow=c(1, mc))
  for(i in 1:mc){
    image(rotate(matrix(M[, i], 64, 64)), col = gray.colors(4096))
  }
  par(mfrow=c(1,1))
}
