	program evalfunc
!
	implicit none
!
	integer i,n
	real*8 a, b, h, x, func
!	
	open(10, file = 'func.in') !dá o valor do intervalo que começa e termina e o n de partições
	read(10, *) a, b, n
	close(10)
!
	open(20, file = 'func.dat')
!
	h = (b-a)/real(n,8) !janela
!
	do i = 1, n
	   x = a + (i-1)*h
	   write(20, *) x, func(x)
	end do
!
	close(20)
!
	end 
!
!
!
	real*8 function func(x)
!
	implicit none
! 
	real*8 x
!
	func = EXP(2.0d0*x)*COS(x/4.0d0)
!
	return
	end

