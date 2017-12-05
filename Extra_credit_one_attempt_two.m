%%% Initialize variables
dx = .1; %change in x
Nx = 200; % Choose the number of x steps 
dt = 0.1; %Length of each time step in seconds 
Nt = 50/dt; % Choose the number of time steps
b=dt/(dx*dx);


V = zeros(Nx+1,Nt+1);
for i=1:201
V(i, 1)=InitialData(i*dx-10.1);
end

for k=1:Nt
    for i=2:Nx
        V(i,k+1)=(V(i,k)*(1-dt))+(b*(V(i-1,k)+V(i+1,k)-(2.*V(i,k))));
    end
end

figure(1)
surf(V); title('Voltage Propagation')