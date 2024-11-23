program estatisticac
    use estatistica
    implicit none

    real, allocatable, dimension(:) :: dados
    real :: y, vvariancia, vdesvio
    integer :: x
    character(len=100) :: nomearquivo

    print*, 'Informe o nome do arquivo'
    read (*, "(A)") nomearquivo

    