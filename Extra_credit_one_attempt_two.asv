%%% Initialize variables
dx = 0.5; %change in x
Nx = 20/dx; % Choose the number of x steps 
dt = 0.005; %Length of each time step in seconds 
Nt = 50/dt; % Choose the number of time steps
b=dt/(dx*dx);


V = zeros(Nx+1,Nt+1);
for i=1:Nx+1
V(i, 1)=InitialData(i*dx-10.1);
end

for k=1:Nt
    for i=2:Nx
        V(i,k+1)=(V(i,k)*(1-dt))+(b*(V(i-1,k)+V(i+1,k)-(2.*V(i,k))));
    end
end

figure(1)
mesh(V); title('Voltage Propagation');ylabel('x (Multiplied by 10, Shifted by 10)'); xlabel('Time (Multiplied by 10)'); zlabel('Voltage')

x=1:Nx+1;
x1=x*dx-10.1;
figure (2)
plot(x1,V(:,500:1001)); title('Voltage Propagation, Times 25-50'); xlabel('x'); ylabel('Voltage')
figure (3)
plot(x1,V); title('Voltage Propagation'); xlabel('x'); ylabel('Voltage')
