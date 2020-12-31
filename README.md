# Matrix Inversion
Calculate Inverse of Invertable Square Matrix using QR Factorization.
QR Factorization is a good way to calculate Invers of Matrix efficiently. as we know Result of Multiplication of a Matrix and it's inverse is Identity matrix. using this fact and QR factorization
, we can replace matrix with it' QR form and beacuse Q has orthogonal columns so it's inverse is it's Transpose. and as we know R is an upper triangular matrix with positive elements on its main diagonal, so we can calculate columns of Inverse matrix with backward 
substitution.
