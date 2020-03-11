%Функция для задания граничных условия по краям стержня

function res = GU( ya, yb )

global F_nagruzka;

res = [ ya(1)-0; ya(2)-0; ya(3)-0; yb(4)-0; yb(6)-0; yb(5)-(-F_nagruzka)];