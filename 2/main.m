%%%%%%%%%%%%%%%%%%%  Part A
clc
w=0.35; % rad/s
n=size(crank_angle.time);
t1=2*pi/w; % start time of second period
t2=4*pi/w; % end time of second period
for i=1:n
    if crank_torque.time(i)>t1
        k1=i;
        break;
    end
end
for i=1:n
    if crank_torque.time(i)>t2
        k2=i;
        break;
    end
end
for i=1:n
     if crank_torque.time(i)>29.99
        k3=i;
        break;
     end
end


E1 = trapz(crank_angle.data(k1:k3),crank_torque.data(k1:k3)) + ...
    trapz(crank_angle.data(k3:k2),crank_torque_.data(k3:k2));...
    % work needed in one period
T_average = E1/(2*pi);


