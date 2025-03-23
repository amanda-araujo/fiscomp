program mapalog
implicit none
!
real*8 x, r
integer i
!
i = 0
r = 2.5d0
x = 0.7d0
!
open(10, file = '1bmapalogr25x3.dat')
write(10, *)i, x
i = i + 1
!
do while (i < 100)
 x = r*x*(1-x)
 write(10, *)i, x
 i = i + 1
end do
! 
 close(10)
end program

