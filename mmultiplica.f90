	program mmultiplica
!
	implicit none
!
	integer i, j, n !n: dimensão da matriz
!
	parameter (n=3) !isso definirá a dim de uma matriz
	!matrizes estáticas: n pode ler a dim dela em num input -> locação dinâmica
!
	real*8 mat(n,n), x(n), y(n)
!
!Leitura da matriz de entrada:	
	open(10, file = 'mmultiplica.in')
	do i = 1, n
	   read(10, *)(mat(i, j), j = 1, n)  !leitura de matrizes e do vetor	
	end do
!
!Leitura do vetor de entrada:
	do i = 1, n
	   read(10, *)x(i)
	end do
!
	close(10)
!
!Operação (invoca a sub-rotina):
	open(20, file = 'mmultiplica.dat')
!
	call submultiplica(n, mat, x, y)
!
	do i = 1, n
	   write(20, *) y(i)
	end do
!
	close(20)
!
	end
!
!Definição da sub-rotina (o que efetivamente faz a conta):
	subroutine submultiplica(n, mat, x, y)
!
	implicit none 
	integer i, j, k, n
	real*8 mat(n,n), x(n), y(n), msum
!
	do i = 1, n
	   msum = 0.0d0
	   do j = 1, n
	      msum = msum + mat(i, j)*x(j)
	   end do
	   y(i) = msum
	end do
!	
	return
	end











