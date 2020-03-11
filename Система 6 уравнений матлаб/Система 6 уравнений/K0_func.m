%Функция для кривизны стержня

function [ result ] = K0_func( s )

L1=20;
L2=40; 
L3 = 60;
R1=20;
R2=R1;
H1=30;
% B=6;
% H2=1;
% E=2*e5;

s1 = L1 - R1*tan(1/2*atan(H1/L2));
s2 = s1 + R1*atan(H1/L2);
s3 = s2 + sqrt((L2).^2+(H1).^2) - (R1+R2)*tan(1/2*atan(H1/L2));
s4 = s3 + R2*atan(H1/L2);
s5 = s4 + L3 - R2*tan(1/2*atan(H1/L2));


if (s>=0 && s<=s1)
    K0 =0;
elseif (s>=s1 && s<=s2)
    K0 = -1/R1;
elseif (s>=s2 && s<=s3)
    K0 = 0;
elseif (s>=s3 && s<=s4)
    K0 = 1/R2;
elseif (s>=s4 && s<=s5)
    K0=0;
end

result = K0;