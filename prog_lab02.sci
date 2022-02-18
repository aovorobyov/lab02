s = 21; // начальное расстояние от лодки до катера
fi = 3*%pi/4;

function dr = f(tetha,r)
    dr = r/sqrt(29.25);
endfunction;

r0 = s/4,5;
tetha0 = -%pi;

tetha = 0:0.01:2*%pi;

r = ode(r0, tetha0, tetha, f);

function xt=f2(t) //описывает движение катера
    xt = tan(fi)*t;
endfunction;

t = 0:1:30;

polarplot(tetha, r, style=color('green')); //траектория катера
plot2d(t, f2(t), style=color('red'));//лодка
