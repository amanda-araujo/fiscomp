	program fatorial
!
	implicit none
!
	real*8 nf
	integer i
!	
	open (10, file = 'fatorial.dat') !criação do arquivo onde os fat serão escritos
	nf = 1.0d0	
	do i = 1, 20  
	   nf = nf*dfloat(i) !fatorial
	   write(10, *) i, nf 
	end do
!
	close(10)
!
	end program
