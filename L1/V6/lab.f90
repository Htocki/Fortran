program lab
    real :: a = 15.1, alpha = 1.23, pi = 3.14
    real :: y1, y2, z1, z2

    y1 = ((1+a+a**2)/(2*a+a**2)+2-(1-a+a**2)/(2*a-a**2))**(-1)*(5-2*a**2);
    y2 = (4.-a**2.)/2.;
    z1 = cos(alpha)+sin(alpha)+cos(3*alpha)+sin(3*alpha);
    z2 = 2*sqrt(2.)*cos(alpha)*sin(pi/4 + 2*alpha);

    open(1, file = 'Out.txt', status = 'replace')
        write(1,*) "y1:", y1
        write(1,*) "y2:", y2
        write(1,*) "z1:", z1
        write(1,*) "z2:", z2

end program lab
