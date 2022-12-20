a=29;
b=37;
p=256;
r(1)=17;
n=8;
x02=0;
c= [0 0 0 0 0 0 0 0];
ei=256/n;
for i=1:256
    r(i+1)=mod(r(i)*a+b,p);
   
    if (r(i+1)<=31)
        c(1)=c(1)+1;
    end
    if (r(i+1)>31 && r(i+1)<= 63)
        c(2)=c(2)+1;
    end
    if (r(i+1)>63 && r(i+1)<= 95)
        c(3)=c(3)+1;
    end
    if (r(i+1)>95 && r(i+1)<= 127)
        c(4)=c(4)+1;
    end
    if (r(i+1)>127 && r(i+1)<= 159)
        c(5)=c(5)+1;
    end
    if (r(i+1)>159 && r(i+1)<= 191)
        c(6)=c(6)+1;
    end
    if (r(i+1)>191 && r(i+1)<= 223)
        c(7)=c(7)+1;
    end
    if (r(i+1)>223 && r(i+1)<= 255)
        c(8)=c(8)+1;
    end
end

for i=1:8
    x02=x02+(c(i)-ei)*(c(i)-ei)/ei;
end
disp(r)
plot(r)
c
x02