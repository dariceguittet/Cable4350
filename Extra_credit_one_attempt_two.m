%%% Initialize variables
dx = .1; %change in x
Nx = 200; % Choose the number of x steps 
Nt = 50; % Choose the number of time steps
dt = 0.1; %Length of each time step in seconds 
b=dt/(dx*dx);


V = zeros(Nx+1,Nt+1);
for i=1:201
V(i, 1)=InitialData(i*0.1-10.1);
end

for k=1:500
    for i=2:200
        V(i,k+1)=(V(i,k)*(1-dt))+(b*(V(i-1,k)+V(i+1,k)+(2.*V(i,k))));
    end
end
% 
% figure(1)
% surf(V); title('Voltage Propagation')