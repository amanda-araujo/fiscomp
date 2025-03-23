program integralmontecarlo
implicit none
real*8 a, b, somatorio, x, f, integral, mediaintegral 
integer N, i, j, it
!
open(10, file = "int2_N100mil_it1000_oi.dat")
!
mediaintegral = 0.0d0
it = 1000
!
do j = 1, it
 a = 0.0d0   !extremos de integração !
 b = 1.0d0
 N = 100000
 somatorio = 0.0d0
 integral = 0.0d0
 do i = 1, N
  call Random_Number(x)                             !pertencente ao intervalo [a:b]
  f = 4.0d0/(x**2 + 1)                              !função f(x)
  somatorio = somatorio + f
 end do
 integral = ((b - a)/real(N, 8))*somatorio
 mediaintegral = mediaintegral + integral
 write(10,*)integral 
end do
!
mediaintegral = mediaintegral/real(it, 8)
write(10,*)mediaintegral
!
close(10)
end program
