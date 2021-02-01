function q = invkine(x,y,z) %specify position of the end effector
mdl_ur5; %load ur5 model
T=transl(x,y,z);
q0=[0 0 0 0 0 0]; %initial guess
q=ur5.ikine(T,q0);
%ur5.plot(q); %plot the theta values found
%ur5.teach; %GUI interface
