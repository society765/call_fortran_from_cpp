c An example Fortran subroutine to calculate
c the summation of two complex*16 numbers
      SUBROUTINE F_XWSUB(a, b, c)
        implicit none
        complex*16 a, b, c
        c = a + b
        WRITE(6,*) "in fortran: ", real(c), aimag(c)
      RETURN
      END