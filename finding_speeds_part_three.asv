%%% Initialize variables
dx = 0.5; %change in x
Nx = 20/dx; % Choose the number of x steps 
dt = 0.005; %Length of each time step in seconds 
Nt = 50/dt; % Choose the number of time steps
b=dt/(dx*dx);
theta=0.1;
C=6;

V2 = zeros(Nx+1,Nt+1);
for i=1:Nx+1
V2(i, 1)=InitialData(i*dx-10.1);
end

for k=1:Nt
    for i=2:Nx
        V2(i,k+1)=(V2(i,k)*(1-dt))+(b*(V2(i-1,k)+V2(i+1,k)-(2*V2(i,k))))+(dt*heaviside(V2(i,k)-(theta*(1+(C*cos(i*dx-10.1))))));
    end
end


figure(1)
% subplot(2,2,1)
mesh(V2); title('Voltage Propagation, Theta=0.1, C=0.5');ylabel('x (Multiplied by 10, Shifted by 10)'); xlabel('Time (Multiplied by 200)'); zlabel('Voltage')

% figure (2)
% mesh(V2(:,200:10001)); title('Voltage Propagation, Theta=0.1, C=2, t>1');ylabel('x (Shifted by 60, Multiplied by 2)'); xlabel('Time (Multiplied by 200)'); zlabel('Voltage')