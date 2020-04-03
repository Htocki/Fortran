program Lab
    real :: a = 1.7, b = 2.8, alpha = 0.22
    real :: y1, y2, z1, z2

    y1 = (a**(1./2.) + a * b**(-1.)) / (a**(-1./3.) - a**(-1./6.) * b**(-1./3.) + b**(-2./3.)) - a / b**(1./3.);
    y2 = a**(5./6.);
    z1 = cos(4*alpha) * tan(2*alpha) - sin(4*alpha);
    z2 = 2*tan(alpha) / (tan(alpha)**2 - 1);

    open(1, file = 'Out.txt', status = 'new')
        write(1,*) "y1:", y1
        write(1,*) "y2:", y2
        write(1,*) "z1:", z1
        write(1,*) "z2:", z2

end program Lab
