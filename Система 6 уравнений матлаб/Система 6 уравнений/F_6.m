%������� 6 ���������������� ���������.
function Ffunc = F_6(s,x)

%���������� ���������� (����� ��� ���� ������� � ���������)
global EJ_dif;
global EA_dif;


%������ ����������
epsilon = (x(4)*cos(x(3))+x(5)*sin(x(3)))/EA_dif;


%6 ���������


Ffunc(1,1) = (1+epsilon)*cos(x(3));
Ffunc(2,1) = (1+epsilon)*sin(x(3));
Ffunc(3,1) = K0_func(s) + (1+epsilon)*(x(6))/EJ_dif;

Ffunc(4,1) = 0;
Ffunc(5,1) = 0;
Ffunc(6,1) = -(1+epsilon)* (x(5)*cos(x(3))-x(4)*sin(x(3)));

end
