! Задание:
! 1. Написать программы Vector1 и Vector2, в каждой из которых:
!    a) ввести 12 вещественных чисел из файла In.txt в
!       одномерный массив и вывести этот массив в
!       результирующий файл Out.txt;
!    b) дополнительные параметры, если они есть в варианте
!       задания, ввести в диалоге с клавиатуры и вывести в файл
!       Out.txt;
!    c) вычислить значения трех переменных, которые входят в
!       состав выражения, и значения выражения;
!    d) по мере вычисления переменных и выраженя выводить их
!       значения в файл Out.txt, поясняя формулировками из
!       индивидуального задания.
! 2. В программе Vector1 вычисления проводить используя
!    циклы по переменной (без встроенных функций для массивов).
! 3. В программе Vector2 те же значения вычислить без do
!    с помощью встроенных функций для массивов и, если надо,
!    оператора where.
! 4. Сравнить результаты работы программ Vector1 и Vector2.
! 5. Данные и результаты выводите в файл Out.txt только по
!    формату.
!
! Комментарии к заданию:
! 1. Встроенные функции для массивов смотрите в разделе 6.2.
! 2. Формулы для вычисления средних значений -- в разделе 7.4.
! 3. При подготовке исходных данных в файле In.txt
!    воспользуйтесь текстовым редактором. Для отладки в файле
!    подготовьте числа, значения которых соответствуют 
!    индивидуальному заданию -- среди них должны быть числа
!    отрицательные, положительные, большие D и так далее.
! 4. Если вычисление какой-либо переменной невозможно из-за
!    отсутствия в массиве подходящих элементов, вывести
!    соответствующее сообщение (например: "В массиве нет
!    отрицательных элементов, больших D", "В массиве нет
!    положительных элементов.", "Все элементы массива с четными
!    номерами равны 0.").
! 5. Все переменные, используемые как индексы элементов
!    массива и счетчики, должны быть целого типа.
! 6. Имена переменных в программе не должны совпадать с
!    именами встроенных функций.
!
! Индивидуальное задание (вариант 6):
!  U / (R + 1) + S
!    U - произведение элементов с четными номерами;
!    R - номер максимального по модулю элемента;
!    S - среднее арифметическое N последних элементов.

Program Vector2  ! или Vector2
Implicit None
    Real, dimension(1:12) :: M
    Real, dimension(1:6) :: MasObr  ! для программы Vector2
    Real :: A, B, C, D, Z
    Integer B, i, Notr, Cnt

    Open(1, FILE = 'In.txt')  ! файл с исходным массивом
    Open(2, FILE = 'Out.txt')  ! результирующий файл
    Write(2, *) 'Программа Vector1'  ! или Vector2
    Read(1, *) M  ! ввод массива
    Write(2, 10) M  ! вывод массива в 2 колонки с заголовками для контроля
    Write(*, *) 'Input D < 0'  ! диалог для ввода значения D<0
    Read(*, *) D
    Write(2, 14) 'D =', D, ' -- должно быть отицательным'
    
End Program Vector1  ! или Vector2