program integralmontecarlo2
implicit none
real*8 a, b, somatorio, x, f, integral 
integer N, i
!
a = 1.0d0   !extremos de integração
b = 10.0d0
N = 1000
somatorio = 0.0d0
!
open(10, file = "integral2.dat")
!
do i = 1, N
 call Random_Number(x)   
 x = x*10.0d0            !ajuste para o intervalo [a:b]
 f = 1.0d0/x             !função f(x)
 somatorio = somatorio + f
end do
!
integral = ((b - a)/real(N, 8))*somatorio
write(10,*)integral 
!
close(10)
end program
