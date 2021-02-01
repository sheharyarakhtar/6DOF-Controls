clear all 
M=xlsread('datainmm');
 
    xi=0;
    yi=0;
    zi=0;
    xf=300;
    yf=110;
    zf=1000;
    
    [row col]=size(M)
    M(row+1,:)=[0 xi,yi,zi];
    M(row+2,:)=[0 xf,yf,zf];
    X=M(:,2);
    Y=M(:,3);
    Z=M(:,4);
    i=1
    for n=1:30002
        if (X(n)>=xi)&(X(n)<=xf)
            k(i)=n;
            i=i+1;
        end    
    end
    k=k';

    [row,col]=size(k);
    i=1

    for n=1:row
        if (Y(k(n))>=yi)&(Y(k(n))<=yf) 
            l(i)=k(n);
            i=i+1;
        end
    end
    l=l';

    [row,col]=size(l);
    i=1
    for n=1:row
        if (Z(l(n))>=zi)&(Z(l(n))<=zf) 
            f(i)=l(n);
            i=i+1;
        end
    end
    f=f';
    [row,col]=size(f);
    r=(X(f).^2 + Y(f).^2 + Z(f).^2).^0.5
    A=[r X(f) Y(f) Z(f)];
    clearvars -except A f X Y Z
    [row col] = size(A)
    u=0:0.001:1;
    A=sort(A);
    if row>4
        n=row/2
        I=A(1,:);
        F=A(row,:);
        A=A(fix(row/6):fix(n):row,:);
        A=[I;A;F];
    end
    [row col] = size(A);
    for n=1:row-1
        xi=A(n,2);
        yi=A(n,3);
        zi=A(n,4);
        xf=A(n+1,2);
        yf=A(n+1,3);
        zf=A(n+1,4);
        Px = (2*u.^3 -3*u.^2+1)*xi + (-2*u.^3 +3*u.^2)*xf + (u.^3 -2*u.^2+u)*xi + (u.^3-u.^2)*xf;
        Py = (2*u.^3 -3*u.^2+1)*yi + (-2*u.^3 +3*u.^2)*yf + (u.^3 -2*u.^2+u)*yi + (u.^3-u.^2)*yf;
        Pz = (2*u.^3 -3*u.^2+1)*zi + (-2*u.^3 +3*u.^2)*zf + (u.^3 -2*u.^2+u)*zi + (u.^3-u.^2)*zf;
        plot3(Px,Py,Pz);
        hold on
    end
    plot3(A(:,2), A(:,3), A(:,4),'*')
    R=[Px',Py',Pz'];

