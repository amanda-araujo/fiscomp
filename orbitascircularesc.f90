program orbitascircularesc
!sol - terra - jupiter
!efeitos de jupiter sob a orbita terrestre
!
implicit none
real*8 pi, dt, tempo, vxi, vxii, xi, xii, vyi, vyii, yi, yii, rii, r
!
pi = acos(-1.0d0)
dt = 0.001    !passo de tempo(UA)
!
print*, "r (semi-eixo maior em UA):"
read(*,*)r
!
!condições iniciais:
tempo = 0.0d0 
!terra:
vxiiterra = 0.0d0
xiiterra = r       !sistema Terra-Sol -> r=1 (UA)
vyiiterra = 2*pi/r**0.5d0
yiiterra = 0.0d0
mterra = 
!jupiter:
vxiijup =
xiijup =
vyiijup =
yiijup = 
mjup = 
!
open(10, file = 'posicaomercurio.dat')
open(20, file = 'velocidademercurio.dat')
open(50, file = 'estabilidadermercurio.dat') 
!
write(10,*)xii, yii
write(20,*)vxii, vyii
write(30,*)1.0d0
!
do while (tempo <= 105 ) 
 r = (xii**2+yii**2)**0.5d0  !se cte -> órbita estável
 vxiterra = vxii - 4*pi**2*(xii/r**3)*dt
 xiterra = xii + vxi*dt
 vyiterra = vyii - 4*pi**2*(yii/r**3)*dt
 yiterra = yii + vyi*dt
 write(10, *)xiterra, yiterra
 write(20, *)vxiterra, vyiterra
 write(50,*)r
 tempo = tempo + dt
 vxii = vxi
 xii = xi
 vyii = vyi
 yii = yi
end do
!
 close(10)
 close(20)
 close(50)
!
end program

