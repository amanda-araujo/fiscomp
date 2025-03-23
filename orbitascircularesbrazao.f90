program razaoleidekepler
!
implicit none
real*8 razao, periodo, r
!
print*, "r (semi-eixo maior em UA):"
read(*,*)r
print*, "periodo:"
read(*,*)periodo
!
open(10, file = '3leidekeplernetuno.dat')
!
razao = periodo**2/r**3
write(10,*)razao
!
 close(10)
!
end program
