program passeioa
implicit none
!
real*8 xo, x, r, deslocamento, dmedio, d2medio 
integer N, t
!hey
xo = 0.0d0
x = xo
N = 200
!
open(10, file = 'tdesl.dat')
write(10,*)0, xo
open(20, file = 'tdeslmedio.dat')
open(30, file = 'td2medio.dat')
open(40, file = 'xaleatorio.dat')
!
do t = 1, N
 call Random_Number(r)
 if (r >= 0.5) then
  x = x + 1
 end if 
 if (r < 0.5) then
  x = x - 1
 end if
 deslocamento = x - xo !!! = x
 write(10, *)t, deslocamento
 dmedio = deslocamento/real(t, 8)
 d2medio = deslocamento**2/real(t,8)
 write(20,*)t, dmedio
 write(30,*)t, d2medio 
end do
!
close(10)
close(20)
close(30)
end program
