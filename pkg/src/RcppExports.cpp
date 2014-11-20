// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// lockInterface
Rcpp::List lockInterface(const char * pathIn, bool exclusive);
RcppExport SEXP flock_lockInterface(SEXP pathInSEXP, SEXP exclusiveSEXP) {
BEGIN_RCPP
    SEXP __sexp_result;
    {
        Rcpp::RNGScope __rngScope;
        Rcpp::traits::input_parameter< const char * >::type pathIn(pathInSEXP );
        Rcpp::traits::input_parameter< bool >::type exclusive(exclusiveSEXP );
        Rcpp::List __result = lockInterface(pathIn, exclusive);
        PROTECT(__sexp_result = Rcpp::wrap(__result));
    }
    UNPROTECT(1);
    return __sexp_result;
END_RCPP
}
// unlockInterface
void unlockInterface(int descriptorIn);
RcppExport SEXP flock_unlockInterface(SEXP descriptorInSEXP) {
BEGIN_RCPP
    {
        Rcpp::RNGScope __rngScope;
        Rcpp::traits::input_parameter< int >::type descriptorIn(descriptorInSEXP );
        unlockInterface(descriptorIn);
    }
    return R_NilValue;
END_RCPP
}