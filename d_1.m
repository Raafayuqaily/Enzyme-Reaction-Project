%BMEG 230
%Deliverable 1

t=277:338; %temp in kelvins

%formula: ln(k)=ln(t)+s/t+h/t^2
%solve for k:
%k=t+e^(s/t)+e^(h/t^2)

h_2=9.8*10^3; %kJ/mol
h_5=47.4*10^3; %kJ/mol
s_2=-52.6; %kJ/molK
s_5=-65.1; %kJ/molK

k_2=exp(log(t)+(s_2./t)+(h_2./(t.^2)));
plot(t,k_2)

figure
k_5=exp(log(t)+(s_5./t)+(h_5./(t.^2)));
plot(t,k_5)

t=310;
k_2=exp(log(t)+(s_2./t)+(h_2./(t.^2)))
k_5=exp(log(t)+(s_5./t)+(h_5./(t.^2)))

%t=310;
k_2=exp(log(310)+(s_2/310)+(h_2/(310^2)))
k_5=exp(log(310)+(s_5/310)+(h_5/(310^2)))