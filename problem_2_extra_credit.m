%%% Initialize variables
dx = 0.5; %change in x
Nx = 60/dx; % Choose the number of x steps 
dt = 0.005; %Length of each time step in seconds 
Nt = 50/dt; % Choose the number of time steps
b=dt/(dx*dx);
theta=0.1;


V2 = zeros(Nx+1,Nt+1);
for i=1:Nx+1
V2(i, 1)=InitialData(i*dx-30.1);
end

for k=1:Nt
    for i=2:Nx
        V2(i,k+1)=(V2(i,k)*(1-dt))+(b*(V2(i-1,k)+V2(i+1,k)-(2.*V2(i,k))))+(dt*heaviside(V2(i,k)-theta));
    end
end

for k=1:Nt
    if V2(80,k)>=0.999
        time1=k;
        break
    end
end
for k=1:Nt
    if V2(100,k)>=0.999
        time2=k;
        break
    end
end

totaltime=(time2-time1)*dt;
speed=((100-80)*dx)/totaltime;
time1
time2
speed

% x=1:Nx+1;
% x1=x*dx-10.1;
% figure(1)
% mesh(V2); title('Voltage Propagation, Theta=1');ylabel('x (Shifted by 60, Multiplied by 2)'); xlabel('Time (Multiplied by 200)'); zlabel('Voltage') 



% figure (2)
% plot(x1,V2)
% figure (3)
% plot(x1,V2(:,500:1001))
% figure (2)
% surfl(V2); title('Voltage Propagation, Theta=3');ylabel('x (Shifted by 60, Multiplied by 2)'); xlabel('Time (Multiplied by 100)'); zlabel('Voltage')