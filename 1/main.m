clc

%a)      %%%%%%%%%%%%%%%%%%%%%%%%

plot(simout1.time,simout1.data);


%b)      %%%%%%%%%%%%%%%%%%%%%%%%
n_=size(simout.Time);
n=n_(1);
angle_limit=[];
t0=[];
for i=10:n-1
    if (simout1.data(i) * simout1.data(i+1))<=0
        angle_limit =[angle_limit,simout3.data(i)];
        t0=[t0,simout.Time(i)];
    end
end

Time_Ratio=(t0(2)-t0(1))/(t0(3)-t0(2));


%C)       %%%%%%%%%%%%%%%%%%%%%

plot(-simout3.data+3.1459265,simout1.data);
xlabel('Angle (Rad)');
ylabel('V (m/s)');
title('V(C Angle)');


%D)       %%%%%%%%%%%%%%%%%%%%%%

plot(-simout3.data+3.1459265,abs(simout4.data));
xlabel('Angle (Rad)');
ylabel('Torque(N.m)');
title('Torque(C Angle)');

