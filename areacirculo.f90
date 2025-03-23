program areacirculo
implicit none
real*8 x, y, conta, pi, a, b, w, pii
integer ndentro, ntotal, n
!
ndentro = 0
ntotal = 1100
!
open(20, file = "xypi1100.dat")
!
do n = 1, ntotal
 call Random_Number(x)
 call Random_NUmber(y)
 x = (x - 0.5d0)*2.0d0   
 y = (y - 0.5d0)*2.0d0
 conta = x**2 + y**2
 if (conta <= 1.0d0) then 
  ndentro = ndentro + 1
 end if
 write(20,*)x, y
end do
!
pi = 4.0d0*(real(ndentro,8)/real(ntotal,8))
!
open(10, file = "pi1100.dat")
write(10, *)pi
 close(10)
 close(20) 


 !desloca para garatir o interv -0.5 +0.5 e depois mult por 2

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
open(40, file = "circunferencia.dat")
pii = acos(-1.0d0)
w = 0.0d0 
do while (w <= 2*pii)
 a = cos(w)
 b = sin(w)
 write(40, *)a, b
 w = w + 0.1d0
end do
!
 close(40)
!
end program
