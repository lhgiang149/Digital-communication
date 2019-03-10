t = linspace(-10,10,1000);   % time
f = 0*t;                    % creates a zero valued function
 
N=10;                        % number of harmonics
for k=-N:1:N
 
    if(k==0)                % skip the zeroth term
        continue;
    end;
 
    C_k = ((1)/(pi*1i*k))*(-exp(pi*1j*k*0.5)+exp(-pi*1j*k*0.5));    
    f_k = C_k*exp(2*pi*1i*k*0.25*t);              
    f = f + f_k;                               
 
end
 
plot(t, f, 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('f(t)');
title(strcat('Fourier synthesis of the square wave function with n=', int2str(N), ' harmonics.' ));
xlim([-7,7])
%ylim([-3*10^(-15),3*10^(-15)])
grid()
%ylabel(r'$x_a(t)$')
title('Fourier Series of x(t)');
xlabel('t')
ylabel('x(t)')