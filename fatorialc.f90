	program fatorialc
!
	implicit none
!
	real*8 fat, logfat, pi, resp, stirl
	integer i
!
!mesma conta da letra b 
	open(20, file = 'tabelacomp.dat')
	fat = 1.0d0
	pi = acos(-1.0d0)	
	do i = 2, 30  
	   fat = fat*dfloat(i) !fatorial
	   logfat = log(fat)
	!incluir no do o ln de stirling:
	   stirl = dfloat(i) * log(dfloat(i)) - dfloat(i) + log(2.0d0*pi*dfloat(i))/2.0d0
	   resp = (logfat - stirl)/logfat
	   write(20, *) i, logfat, stirl, resp
	end do
!
	end program
