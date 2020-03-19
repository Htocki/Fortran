program lab
    real :: x, y
    character :: prognosis
    logical :: A, B, C, result

    open(unit = 1, file = "In.txt", status = "old", iostat = ios  )
    open(unit = 2, file = "Out.txt", status = "replace")

    ! Если: файл "In.txt" успешно открыт
    read(1, *) x, y, prognosis
        A = x <= 0
        B = y > 0
        C = y > -x**2-2
        result = .not.(A.and.B).or.C
    write(2, *) x, y, prognosis, result

    read(1, *) x, y, prognosis
        A = x <= 0
        B = y > 0
        C = y > -x**2-2
        result = .not.(A.and.B).or.C
    write(2, *) x, y, prognosis, result

    read(1, *) x, y, prognosis
        A = x <= 0
        B = y > 0
        C = y > -x**2-2
        result = .true.
    write(2, *) x, y, prognosis, result

    read(1, *) x, y, prognosis
        A = x <= 0
        B = y > 0
        C = y > -x**2-2
        result = .false.
    write(2, *) x, y, prognosis, result
    ! Иначе: Сообщение("Файл не найден.")
    
    close(1)
    close(2)
end program lab