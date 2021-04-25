program expoentelyapunov
implicit none
!
!derivada de G = r - 2rx
real*8 x, r, parcexp, lyapunov, glinha
integer i
 !rlinha
!
r = 3.7d0
x = 0.9d0
 i = 0
 lyapunov = 0.0d0
!rlinha = 0
!
open(10, file = 'lr3709.dat')
!
!do while (rlinha <= 15000)
 
 
do while (i < 1000)                                                     !realiza até 999
 x = r*x*(1-x)
 glinha = r - 2*r*x
 parcexp = dlog(abs(glinha))   
 lyapunov = lyapunov + parcexp
 i = i + 1
end do
 lyapunov = lyapunov/1000.0d0
 write(10, *) r, lyapunov
 r = r + 0.0001d0
 
 
 !rlinha = rlinha + 1
!end do 
!
 close(10)
end program


