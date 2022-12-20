h = 0.0002;
a11 = -50;
a21 = -19000;
a22 = -21.5;
ein = 1.5;

v10=0.0;
v20=0.0;

t = zeros(800);
v1 = zeros(800);
v2 = zeros(800);

for i=1:800

    m11=function1(a11, v10, ein);
    m12=function1(a11,v10+m11*h/2,ein);
    m13=function1(a11,v10+m12*h/2,ein);
    m14=function1(a11,v10+m13*h,ein);
    v11=v10+((m11+2*m12+2*m13+m14)/6)*h;
    m21=function2(a21, a22, v10,v20,ein);
    m22=function2(a21, a22, v10+h/2,v20+m21*h/2,ein);
    m23=function2(a21, a22, v10+h/2,v20+m22*h/2,ein);
    m24=function2(a21, a22, v10+h,v20+m23*h,ein);
    v21=v20+((m21+2*m22+2*m23+m24)/6)*h;
    v10=v11;
    v20=v21;
    t(i) = h*i;
    v1(i) = v10;
    v2(i) = v20;
end
subplot(2,1,1)
plot(t,v1)

subplot(2,1,2)
plot(t,v2)
