	program serietaylorcos
!
	implicit none
!
	integer a, i
	real*8 x, cosx, xp, ifat
!
!Leitura de x:
	open(10, file = 'serietaylorcos.in')
	read(10, *) x
	close(10)
!
!Conta:
	open(20, file = 'serietaylorcos.dat')
	i = 2
	ifat = 1.0d0
	cosx = 1.0d0
	xp = 1.0d0 !!!	
	do while (xp >  1.0d-6)!condição: precisão de 10⁻6
	   do a = 1, i
	      ifat = ifat*a
	   end do	   	   
	   xp = x**i/ifat		!Valor de cada parcela a sar somada na série
	   if (mod(i, 4) == 0) then 	!cosx = cosx +- xp --> condicional
	      cosx = cosx + xp
	   else 
	      cosx = cosx - xp 
	   end if
	   write(20, *) i, cosx, cos(x)
 	   i = i + 2
	   ifat = 1.0d0 !reiniciar, para quando rodar o próximo começar do 1 de novo 
!
	end do	
!
	close(20)   
!
	end 


















