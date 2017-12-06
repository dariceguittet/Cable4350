x=linspace(0,50,10000);
c=2;

for t=1:2:20
    hold on
    V=zeros(1,10000);
    xi=x-c*t;
    for i=1:10000
        if xi(i)>0 %use traveling wave solution V1
            V1=(-c+(c^2+4)^.5)/(2*(c^2+4)^.5)*exp(-.5*(c+(c^2+4)^.5)*xi(i));  
            V(i)=V1;
        else %xi(i)<0 use traveling wave solution V2
            V2=(-c-(c^2+4)^.5)/(2*(c^2+4)^.5)*exp(.5*(-c+(c^2+4)^.5)*xi(i))+1;
            V(i)=V2;
        end
    end
    plot(x,V)
end
xlabel('x')
ylabel('Voltage Amplitude')
legend('t=1','t=3','t=5','t=7','t=9')