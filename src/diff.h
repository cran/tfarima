#ifndef __ARIMA_DIFF__
#define __ARIMA_DIFF__
#include "RcppArmadillo.h"

arma::colvec diffC(const arma::colvec &z, const arma::colvec &nabla, const bool &bc);  
  
#endif //__ARIMA_DIFF__
