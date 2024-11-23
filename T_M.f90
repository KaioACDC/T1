module estatistica
    implicit none

contains

    function media (valor, x) result (y)
        real, dimension (:), intent (in) :: valor
        integer, intent (in) :: x
        real :: y
        y = sum(valor) / real (x)
    end function media

    function variancia (valor, x, y) result (vvariancia)
        real, dimension(:), intent(in) :: valor
        integer, intent (in) :: x
        real, intent (in) :: y 
        real :: vvariancia
        vvariancia = sum((valor - y)**2) / real (x)
    end function variancia

    function desviop (vvariancia) result (vdesvio)
        real, intent (in) :: vvariancia
        real :: vdesvio
        vdesvio = sqrt (vvariancia)
    end function desviop

    subroutine leitura_dados (nomearquivo, valor, x)
        character (*), intent(in) :: nomearquivo
        real, allocatable, dimension (:), intent (out) :: valor
        integer, intent (out) :: x 
        integer :: iunidade, i

        iunidade = 10

        open(iunidade, file=nomearquivo, status='old', action='read')
        x=0

        do 
            read (iunidade, *, iostat=i)
            if (i/=0) exit
            x = x + 1    
        end do

        rewind(iunidade)

        allocate(valor(x))

        do i = 1, x
            read(iunidade, *) valor(i)
        end do

        close(iunidade)
    end subroutine

end module estatistica