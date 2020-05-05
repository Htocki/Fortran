program lab
    real :: x, y
    character :: prognosis
    logical :: A, B, C, result

    open(unit = 1, file = "files/In.txt", status = "old", iostat = ios  )
    open(unit = 2, file = "files/Out.txt", status = "replace")

    if (ios == 0) then
        ! Логическое сложение
        read(1, *) x, y, prognosis
            A = x <= 0
            B = y > 0
            C = y > -x**2 + 2
            result = A.or.B.or.C
        write(2, *) x, y, prognosis, result

        read(1, *) x, y, prognosis
            A = x <= 0
            B = y > 0
            C = y > -x**2 + 2
            result = A.or.B.or.C
        write(2, *) x, y, prognosis, result

        ! Логическое умножение
        read(1, *) x, y, prognosis
            A = x <= 0
            B = y > 0
            C = y > -x**2 + 2
            result = A.and.B.and.C
        write(2, *) x, y, prognosis, result

        read(1, *) x, y, prognosis
            A = x <= 0
            B = y > 0
            C = y > -x**2 + 2
            result = A.and.B.and.C
        write(2, *) x, y, prognosis, result

        ! Дополнительная формула
        read(1, *) x, y, prognosis
            A = x <= 0
            B = y > 0
            C = y > -x**2 + 2
            result = .not.(A.and.B).or.C
        write(2, *) x, y, prognosis, result

        read(1, *) x, y, prognosis
            A = x <= 0
            B = y > 0
            C = y > -x**2 + 2
            result = .not.(A.and.B).or.C
        write(2, *) x, y, prognosis, result
    else 
        write(2, *) "Ошибка: Файл 'In.txt' не найден."
        stop
    endif
    
    close(1)
    close(2)
end program lab