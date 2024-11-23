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

    