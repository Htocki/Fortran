program lab
    implicit none

    real x, y, alpha
    integer, parameter :: tabl = 6 ! Имени tabl присвоен номер устройства 6
    integer k ! Номер точки криволинейного участка

    ! Участки для AGrapher
    open(1, file = "L3_F1.txt") ! 1 - координаты точек прямой
    open(2, file = "L3_F2.txt") ! 2 - координаты точек дуги окружности
    open(3, file = "L3_F3.txt") ! 3 - горизонталь (координаты граничных точек)
    open(tabl, file = "Out.txt") ! Контрольный текстовый файл

    write(tabl, *) "прямая"
    do x = -2, 0, 1
        y = 0.5*x+1
        write(1, *) x, y;
        write(tabl, *) " (x, y) =", x, y
    enddo

    write(tabl, *) "дуга окружности"
    k=0 ! начальная установка счетчика точек на дуге окружности
    do alpha = 0, 90, 3 ! аргумент функций Sind, Cosd - в градусах, шаг цикла - целый
        x = cos(alpha)
        y = sin(alpha)
        write(2, *) x, y
        k = k + 1
        ! в tabl печатается каждая 5-я точка. Mod(k, 5) - остаток от деления k на 5
        if (mod(k, 5) == 1) write(tabl, *) " (x, y) =", x, y
    enddo

    write(tabl, *) "Горизонталь - две точки без цикла"
    write(tabl, *) " (1, -1) ==> (3, -1)"
    write(3, *) 1, -1
    write(3, *) 3, -1
end program lab
