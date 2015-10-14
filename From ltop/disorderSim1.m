a=zeros(400);
for i=1:200;
    for j=1:200
        a(i,j)=6.007;
    end
end
for i=200:400;
    for j=1:200
        a(i,j)=6.008;
    end
end
for i=1:200;
    for j=200:400
        a(i,j)=6.004;
    end
end
for i=200:400;
    for j=200:400
        a(i,j)=6.005;
    end
end
mesh(a)
aa = awgn(a,80);
bb = aa * 10^(-9);
mesh(bb)

Tcenterrow = mean(b);
Tcenter = mean(Tcenterrow);
delta_l = b-Tcenter;


h = 6.62068e-34;
ElectronMass = 9.10938291e-31;
Red_Mass = .055 * ElectronMass;

cube = zeros(400)+3;
lcub = b.^cube;

c = delta_l./lcub;


mesh(c)

dE = -((((h^2)*(pi^2))/(2*Red_Mass() * c) * 10^22;

figure
mesh(dE)





%%
dE = -((((h^2)*(pi^2))/(2*Red_Mass)) * (1/((.95)^2)