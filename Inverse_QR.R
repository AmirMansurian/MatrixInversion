MatrixDim = 3  # Enter Dimension of Square Matrix

A = matrix(c(1, 3, 5, 2, 8, 16, 1, 7, 9), nrow = MatrixDim) # Fill Matrix Here Column by Column
Inverse = matrix(rep(0, MatrixDim*MatrixDim), nrow = MatrixDim)
X <- rep(0, MatrixDim)

QR <- qr(A)
Q <- qr.Q(QR)
R <- qr.R(QR)
QT <- t(Q)

for (i in seq(1, MatrixDim, by=1))
{
  X <- 0
  Inverse[MatrixDim, i] <- QT[MatrixDim, i]/R[MatrixDim, MatrixDim]
  X[MatrixDim] <- QT[MatrixDim, i]/R[MatrixDim, MatrixDim] 
   
  for (j in seq(MatrixDim-1, 1, by=-1))
  {
    sum <- 0
    for (k in seq(MatrixDim, j+1, by=-1))
    {
      sum <- sum + X[k]*R[j, k] 
    }

    Inverse[j, i] <- (QT[j, i] - sum)/R[j, j]  
    X[j] <- Inverse[j, i]
  }
}

