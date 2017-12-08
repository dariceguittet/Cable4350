%%% Initialize variables
dx = 0.5; %change in x
Nx = 20/dx; % Choose the number of x steps 
dt = 0.005; %Length of each time step in seconds 
Nt = 50/dt; % Choose the number of time steps
b=dt/(dx*dx);
theta=0.1;
C=0.5;

V2 = zeros(Nx+1,Nt+1);
for i=1:Nx+1
V2(i, 1)=InitialData(i*dx-10.1);
end

for k=1:Nt
    for i=2:Nx
        V2(i,k+1)=(V2(i,k)*(1-dt))+(b*(V2(i-1,k)+V2(i+1,k)-(2*V2(i,k))))+(dt*heaviside(V2(i,k)-(theta*(1+(C*cos(i*dx-10.1))))));
    end
end


C=20;

V3 = zeros(Nx+1,Nt+1);
for i=1:Nx+1
V3(i, 1)=InitialData(i*dx-10.1);
end

for k=1:Nt
    for i=2:Nx
        V3(i,k+1)=(V3(i,k)*(1-dt))+(b*(V3(i-1,k)+V3(i+1,k)-(2*V3(i,k))))+(dt*heaviside(V3(i,k)-(theta*(1+(C*cos(i*dx-10.1))))));
    end
end

C=200;

V4 = zeros(Nx+1,Nt+1);
for i=1:Nx+1
V4(i, 1)=InitialData(i*dx-10.1);
end

for k=1:Nt
    for i=2:Nx
        V4(i,k+1)=(V4(i,k)*(1-dt))+(b*(V4(i-1,k)+V4(i+1,k)-(2*V4(i,k))))+(dt*heaviside(V4(i,k)-(theta*(1+(C*cos(i*dx-10.1))))));
    end
end


C=-200;

V5 = zeros(Nx+1,Nt+1);
for i=1:Nx+1
V5(i, 1)=InitialData(i*dx-10.1);
end

for k=1:Nt
    for i=2:Nx
        V5(i,k+1)=(V5(i,k)*(1-dt))+(b*(V5(i-1,k)+V5(i+1,k)-(2*V5(i,k))))+(dt*heaviside(V5(i,k)-(theta*(1+(C*cos(i*dx-10.1))))));
    end
end



figure(1)
subplot(2,2,1)
mesh(V2); title('Voltage Propagation, Theta=0.1, C=0.5');ylabel('x (Multiplied by 10, Shifted by 10)'); xlabel('Time (Multiplied by 200)'); zlabel('Voltage')

subplot(2,2,2)
mesh(V3); title('Voltage Propagation, Theta=0.1, C=20');ylabel('x (Multiplied by 10, Shifted by 10)'); xlabel('Time (Multiplied by 200)'); zlabel('Voltage')

subplot(2,2,3)
mesh(V4); title('Voltage Propagation, Theta=0.1, C=200');ylabel('x (Multiplied by 10, Shifted by 10)'); xlabel('Time (Multiplied by 200)'); zlabel('Voltage')

subplot(2,2,4)
mesh(V5); title('Voltage Propagation, Theta=0.1, C=-200');ylabel('x (Multiplied by 10, Shifted by 10)'); xlabel('Time (Multiplied by 200)'); zlabel('Voltage')

