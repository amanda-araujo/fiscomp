program satelitegeoestacionarios
!
implicit none
real*8 pi, dt, tempo, Ts, Tl, rgeo, rl, rs, rsl, vxs, xs, vys, ys, xl, yl, G, mt
!
pi = acos(-1.0d0)
dt = 10.0d0    !passo de tempo(s)
!
!info:
Ts = 86400.0d0
rgeo = 42244000.0d0
rl =  384400000.0d0 !metros!!
G = 6.6743d-11
mt = 5.9736d24
!
!condições iniciais:
tempo = 0.0d0 
Tl = 27.32d0*Ts
xs = rgeo  
vxs = 0.0d0  
ys = 0.0d0  
rs = (xs**2+ys**2)**0.5d0  
vys = (G*mt/rs)**0.5d0  !velocidade de orbita supondo mov circular
xl = rl
yl = 0.0d0
!tais que a lua e o satélite estejam numa mesma reta
!
open(10, file = 'posicaoSATb.dat')
open(20, file = 'posicaoluab.dat')
!
do while (tempo <= 8640001)
 rs = (xs**2+ys**2)**0.5d0  
 xl = rl*cos(2*pi*tempo/Tl)
 yl = rl*sin(2*pi*tempo/Tl)
 rsl = ((xs - xl)**2 + (ys - yl)**2)**0.5d0
 vxs = vxs - (G*mt)*(xs/rs**3)*dt - (1.23d0*0.01d0*(G*mt))*((xs - xl)/rsl**3)*dt
 xs = xs + vxs*dt
 vys = vys - (G*mt)*(ys/rs**3)*dt - (1.23d0*0.01d0*(G*mt))*((ys - yl)/rsl**3)*dt
 ys = ys + vys*dt  
 tempo = tempo + dt
 write(10, *)xs, ys
 write(20, *)xl, yl
end do
!
 close(10)
 close(20)
!
end program
