program orbitascirculares
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
vxii = 0.0d0
xii = r       !sistema Terra-Sol -> r=1 (UA)
vyii = 2*pi/r**0.5d0  !velocidade de orbita supondo mov circular
yii = 0.0d0
!y começa no zero 
!
open(10, file = 'periodonetuno.dat')
!
do while (yii >= 0)!(tempo <= 300 ) !condição de parada: t suficiente p todos os planetas darem uma volta ao redor do sol
 r = (xii**2+yii**2)**0.5d0  !se cte -> órbita estável
 vxi = vxii - 4*pi**2*(xii/r**3)*dt
 xi = xii + vxi*dt
 vyi = vyii - 4*pi**2*(yii/r**3)*dt
 yi = yii + vyi*dt  !!!
 tempo = tempo + dt
 vxii = vxi
 xii = xi
 vyii = vyi
 yii = yi
end do
!
write(10, *)2*tempo
!
 close(10)
!
end program
