%

k_2=289.7076;
k_5=411.4998;

[t,ES]=ode45(@q, [0 .5], [0, 2.16*10^(-3), 0, 0, 0, 0, 0.01]);

    ES_conc=ES(:,1);
    E=ES(:,2);
    EA=ES(:,3);
    SEA=ES(:,4);
    SES=ES(:,5);
    P=ES(:,6);
    S=ES(:,7);
    
    plot(t,S)
    title('substrate')
    figure
    plot(t,P)
    title('product')
    figure
    plot(t,E)
    title('enzyme')