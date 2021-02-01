format short
dh = [
    0 .170 0 1.5708;
    0 0 .467 0;
    0 0 -.384 0;
    0 .0525 0 1.5708;
    0 .116 0 -1.5708;
    0 .22656 0 0];			%DH Table
r=SerialLink(dh); 			%Serial manipulator assigned to variable r
% r.fkine([pi/2 0 0 0 0 0]);		%calculates values of x,y,z for the given values of theta
% r.plot([0 0 0 0 0 0]);			%plots the manipulator for the given values of theta
% r.teach;				%provides a realtime demonstration of the forward kinematics
syms th1 th2 th3 th4 th5 th6;		%variables are assignmed
A=r.fkine([th1 th2 th3 th4 th5 th6])	%forward kinematics matrix is calculated
vpa(A)