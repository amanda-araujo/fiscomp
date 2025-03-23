	program logfat
!
	implicit none
!
	real*8 nf, saidalog
	integer i
!	
	open (10, file = 'logaritmo.dat') !criação do arquivo onde os log dos fat serão escritos
	nf = 1.0d0	
	do i = 2, 30  
	   nf = nf*dfloat(i) !fatorial
	   saidalog = log(nf)
	   write(10, *) i, nf, saidalog 
	end do
!
	close(10)
!
	end program

