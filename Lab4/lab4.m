%pkg load control

k = 10
m = 10
D = [4 8 16 20 40 80]
for i=1:6
    A = [0 1;-k/m -D(i)/m]
    B = [0;k/m]
    C = [1 0]
    E = [0]
    my_ss = ss(A,B,C,E)
    hold on;
    step(my_ss)
end
legend ('0.2','0.4','0.8','1','2','4')