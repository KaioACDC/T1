module estatistica
    implicit none

contains

    function media (valor, x) result (y)
        real, dimension (:), intent (in) :: valor
        integer, intent (in) :: x
        real :: y
        y = sum(valor) / real (x)
    end function media