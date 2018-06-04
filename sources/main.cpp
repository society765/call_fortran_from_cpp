#include <iostream>

// when calling Fortran subroutines, 
// an underscore "_" is required to append the 
// original Fortran subroutine name
// Note that all Fortran subroutines are "pass by reference"
extern "C" void f_xwsub_(double *, double *, double *);

int main(int argc, char *argv[]) {
    // double X[2] represents a complex*16 number in Fortran,
    // where X[0] is the real part, and X[1] is the imaginary part
    double a[2] = {3.0, 4.0};
    double b[2] = {1.0, 2.0};

    double c[2];

    f_xwsub_(a, b, c);

    std::cout << "in c++: " << c[0] << ", " << c[1] << std::endl;
    return 0;
}