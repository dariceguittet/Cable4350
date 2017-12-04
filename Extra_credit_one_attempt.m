%%% Initialize variables
dx = .1; %change in x
Nx = 200; % Choose the number of x steps 
Nt = 50; % Choose the number of time steps
dt = 0.1; %Length of each time step in seconds 



V = zeros(Nx+1,Nt+1);
for i=1:201
V(i, 1)=InitialData(i*0.1-10.1);
end

maxiter = 500;
for iter = 1:maxiter
    Vlast = V; %Save the last guess
%     V(:,1) = Vlast(:,end); %Initialize the temp at t=0 to the last temp
    for i=2:Nt+1,
        depth_2D = (V(1:end-2,i-1)-2*V(2:end-1,i-1)+V(3:end,i-1))/dx^2;
        time_1D = depth_2D;
        V(2:end-1,i) = 0.5*(time_1D*dt + V(2:end-1,i-1));
        V(end,i) = V(end-1,i); % Enforce bottom BC
    end
    err(iter) = max(abs(V(:)-Vlast(:)));  %Find difference between last two solutions
    if err(iter)<1E-4
        break; % Stop if solutions very similar, we have convergence
    end
end
if iter==maxiter;
    warning('Convergence not reached')
end

figure(1)
surf(V); title('Voltage Propagation')