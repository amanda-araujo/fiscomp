program mapalog
implicit none
!
real*8 x, r
integer i
!
i = 0
r = 2.0d0/3.0d0   !a  
x = 0.2d0
!
open(10, file = 'mlogpresa.dat')
write(10, *)i, x
i = i + 1
!
do while (i <= 50)
 x = r*x*(1-x)
 write(10, *)i, x
 i = i + 1
end do
! 
 close(10)
end program

