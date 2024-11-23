module estatistica !iniciando modulo
    implicit none

contains

    function media (valor, x) result (y) !função para calcular a média
        !definindo o padrão dos valores
        real, dimension (:), intent (in) :: valor 
        integer, intent (in) :: x 
        real :: y
        y = sum(valor) / real (x) !média é igual a soma de valores do arquivo, dividido pelo número de números dados
    end function media

    function variancia (valor, x, y) result (vvariancia) !função para calcular a variância
        !definindo o padrão dos valores
        real, dimension(:), intent(in) :: valor
        integer, intent (in) :: x
        real, intent (in) :: y 
        real :: vvariancia
        vvariancia = sum((valor - y)**2) / real (x) !variância é a soma do valores dados menos a média elevado ao quadrado dividido pelo número de números dados
    end function variancia

    function desviop (vvariancia) result (vdesvio) !função para calcular desvio padrão
        !definindo o padrão dos valores
        real, intent (in) :: vvariancia
        real :: vdesvio
        vdesvio = sqrt (vvariancia) !desvio padrão é a raiz do valor da variância
    end function desviop

    subroutine leitura_dados (nomearquivo, valor, x) !criando subrotina que lê o arquivo de dados e aloca eles
        !definindo o padrão dos valores
        character (*), intent(in) :: nomearquivo
        real, allocatable, dimension (:), intent (out) :: valor
        integer, intent (out) :: x 
        integer :: iunidade, i

        iunidade = 10 !unidade do arquivo

        open(iunidade, file=nomearquivo, status='old', action='read') !abre o arquivo para leitura
        x=0

        do !conta quantos valores existem no arquivo
            read (iunidade, *, iostat=i)
            if (i/=0) exit
            x = x + 1    
        end do

        rewind(iunidade) !reposiciona o arquivo

        allocate(valor(x)) !aloca memória para armazenar os valores

        do i = 1, x !lê os valores do arquivo
            read(iunidade, *) valor(i)
        end do

        close(iunidade) !fecha o arquivo
    end subroutine !termina subrotina

end module estatistica !encerra o módulo