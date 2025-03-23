program decaimentoradioativo
implicit none
!
real*8 tempo, tmax, dt, vidam, lambda, dp, vn, r
integer i, n
!
tempo = 0.0d0
tmax = 70000.d0  !bem maior q a vida media *100
dt = 0.070d0   !bem menor q a vida média -100*
n = 1000     !quantidade de nucleos radioativos: 100
vidam = 700.0d0 !milhões de anos
lambda = 1.0d0/vidam
!
!chance de decair: 
dp = lambda*dt
!
open(10, file = "decradioativo007.dat")
!
do while (tempo <= tmax .and. n > 0) 
 vn = 0
 do i = 1, n   !prob de cada núcleo individualmente
  call random_number(r)
  if (r <= dp) then
   vn = vn + 1
  end if
 end do
 n = n - vn !quanto decaiu
 write(10, *)tempo, n
 tempo = tempo + dt
end do
!
 close(10)
!
end program


