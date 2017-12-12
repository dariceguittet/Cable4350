x=linspace(0,50,10000);

theta=0.01;
c=sqrt(-(2*theta-1).^2./(theta.^2-theta));
for t=1:2:10
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
    plot(x,V,'r')
end

theta=0.1;
c=sqrt(-(2*theta-1).^2./(theta.^2-theta));
for t=1:2:10
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
    plot(x,V,'g')
end

theta=0.5;
c=sqrt(-(2*theta-1).^2./(theta.^2-theta));
for t=1:2:10
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
    plot(x,V,'b')
end

theta=0.8;
c=sqrt(-(2*theta-1).^2./(theta.^2-theta));
for t=1:2:10
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
    plot(x,V,'m')
end

theta=0.98;
c=sqrt(-(2*theta-1).^2./(theta.^2-theta));
for t=1:2:10
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
    plot(x,V,'b')
end

ylim([0,1.1])
xlabel('x')
ylabel('Voltage Amplitude')