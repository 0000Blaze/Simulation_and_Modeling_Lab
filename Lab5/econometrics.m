G = [35250,35500,35300,35200,33300,34500,37000,36000,35000,38500];
Y(1)=40000;
for k= 2:10
    I(k) = 2+0.1*Y(k-1);
    Y(k) = 45.45+2.27*(I(k-1)+G(k-1));
    T(k) = 0.2*Y(k-1);
    C(k) = 20+0.7*(Y(k-1)-T(k-1));
end
format short g
C
I
T
format short g
Y
plot(Y)
hold on
plot(C)
hold on
plot(I)
hold on
plot(T)
hold on
plot(G)
h = legend('National Income(Y)','Consumption(C)','Investment(I)','Taxes(T)','Expenditure(G)');
set(h,'Interpreter','none')


