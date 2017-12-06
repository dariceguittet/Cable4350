theta=linspace(0,1,10000);
c=sqrt(-(2*theta-1).^2./(theta.^2-theta));
plot(theta,c)
xlabel('Threshold Value, \theta')
ylabel('Speed of Traveling wave, c')
title('Speed of Traveling Wave versus Threshold Value')