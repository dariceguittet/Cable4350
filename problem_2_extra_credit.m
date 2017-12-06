%%% Initialize variables
dx = 0.1; %change in x
Nx = 20/dx; % Choose the number of x steps 
dt = 0.1; %Length of each time step in seconds 
Nt = 50/dt; % Choose the number of time steps
b=dt/(dx*dx);
theta=1;


V2 = zeros(Nx+1,Nt+1);
for i=1:Nx+1
V2(i, 1)=InitialData(i*dx-10.1);
end

for k=1:Nt
    for i=2:Nx
        V2(i,k+1)=(V2(i,k)*(1-dt))+(b*(V2(i-1,k)+V2(i+1,k)-(2.*V2(i,k))))+(dt*heaviside(V2(i,k)-theta));
    end
end

figure(1)
mesh(V2); title('Voltage Propagation, Theta=1');ylabel('x (Multiplied by 10, Shifted by 10)'); xlabel('Time (Multiplied by 200)'); zlabel('Voltage') 
% figure (2)
% surfl(V2); title('Voltage Propagation, Theta=3');ylabel('x (Multiplied by 2, Shifted by 10)'); xlabel('Time (Multiplied by 100)'); zlabel('Voltage')