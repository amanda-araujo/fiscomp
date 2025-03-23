	program derivadanumerica
!
	implicit none
!
	integer i, n !n: numero de partições
	real*8 a, b, h, x, func, df ![a, b]:in/fim do intervalo; h: janela; x: a derivada no pto
!
!leitura dos dados: 
	open(10, file = 'derivada.in')
	read(10, *)a, b, n, x !dúvida: temos que informar que x = 1? ou para anlisar ao redor de 1                              1 é só indicar pelo intervalo?
	close(10)
!
	open(20, file = 'derivada.dat')
!
	h = (b - a)/real(n, 8) !tamanho das janelas
                               !*intuitivamente: menor janela, ou seja, menor o valor de h, mais  precisa a resposta
!
	do i = 1, n
	   df = (func(x + h) - func(x))/ h !derivada de frente	
	   write(20, *) df, h
	end do 
!
	close(20)
!
	end program

!conceito fortran: função
!parecido com sub-rotina -- o que retorna esta no argumento
!FUNÇÃO f(x):
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
!DERIVADA NUMÉRICA:
!df(x) = [f(x+h) - f(x)]/h  'frente'

!letra a: 
