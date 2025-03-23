program numerosleatorios
implicit none
!
real*8 r(100), media, somatorio, parcela, desvio, N
integer i
N = 100.0d0
media = 0.0d0
somatorio = 0.0d0
parcela = 0.0d0
!
open(10, file = "numaleatorios100.dat")
open(30, file = "dpmedianal100.dat")
!
do i = 1,100
 call Random_Number(r)
 write(10, *)i, r
 media = media + r(i)
end do
!
!media:
media = media / N  
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
!desvio padrão:
do i = 1, 100
 parcela = (r(i) - media)**2
 somatorio = somatorio + parcela
end do
desvio = sqrt(somatorio/(N - 1))
write(30, *)media, desvio
!
!!!!!!!!!!!!!!!!111
 close(10)
 close(30)
end program
