program estatisticac !iniciando programa
    use estatistica
    implicit none

    !definindo o padrão dos valores
    real, allocatable, dimension(:) :: dados
    real :: y, vvariancia, vdesvio
    integer :: x
    character(len=100) :: nomearquivo

    print*, 'Informe o nome do arquivo'
    read (*, "(A)") nomearquivo !vendo qual é o nome do arquivo

    call leitura_dados(nomearquivo, dados, x) !lendo os dados do arquivo

    !alocando valores
    y = media (dados, x)
    vvariancia = variancia (dados, x, y)
    vdesvio = desviop (vvariancia)

    !mostrando os resultandos
    print*, 'Resultados'
    print*, 'Media:', y
    print*, 'Variancia:', vvariancia
    print*, 'Desvio padrao:', vdesvio 

end program estatisticac !encerrando programa