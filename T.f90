program estatisticac
    use estatistica
    implicit none

    real, allocatable, dimension(:) :: dados
    real :: y, vvariancia, vdesvio
    integer :: x
    character(len=100) :: nomearquivo

    print*, 'Informe o nome do arquivo'
    read (*, "(A)") nomearquivo

    y = media (dados, x)
    vvariancia = variancia (dados, x, y)
    vdesvio = desviop (vvariancia)

    print*, 'Resultados'
    print*, 'Media:', y
    print*, 'Variancia:', vvariancia
    print*, 'Desvio padrao:', vdesvio 

end program estatisticac