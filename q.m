function dPdt=q(t,m)

    ES=m(1);
    E=m(2);
    EA=m(3);
    SEA=m(4);
    SES=m(5);
    P=m(6);
    S=m(7);

    k_0=1.3*10^6;
    k_1=17312;
    k_2=289.7076;
    k_3=988;
    k_4=1.3*10^6;
    k_5=411.4998;
    k_6=472;
    k_7=12935;
    
    dES=(k_0*E*S)-(k_1*ES)-(k_2*ES)-(k_3*ES*S)+(k_4*SES);
    dE=(k_1*ES)+(k_7*EA)-(k_0*E*S);
    dEA=(k_2*ES)+(k_6*SEA)-(k_7*EA);
    dSEA=(k_5*SES)-(k_6*SEA);
    dSES=(k_3*ES*S)-(k_4*SES)-(k_5*SES);
    dP=(k_5*SES)+(k_2*ES);
    dS=(k_1*ES)+(k_4*SES)+(k_6*SEA)-(k_0*E*S)-(k_3*ES*S);
    
    dPdt(1)=dES;
    dPdt(2)=dE;
    dPdt(3)=dEA;
    dPdt(4)=dSEA;
    dPdt(5)=dSES;
    dPdt(6)=dP;
    dPdt(7)=dS;
    
    dPdt=dPdt';