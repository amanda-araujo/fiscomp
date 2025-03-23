program diagramabifurcacao
implicit none
!
real*8 x, r
integer i, rlinha
!
!x = 0.7d0
r = 2.50d0
rlinha = 0
!
open(10, file = '2bdiagrbifurcacao2x07.dat')
!
do while (rlinha <= 150)
 x = 0.7d0
 i = 0
 do while (i <= 100)
  x = r*x*(1-x)
  if (i >= 50) then
   write(10, *)r, x
  end if
  i = i + 1
 end do
 r = r + 0.01d0
 rlinha = rlinha + 1
end do 
! 
 close(10)
end program

