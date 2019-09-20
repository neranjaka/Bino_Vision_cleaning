function dZdt = derive(t,Z)

derivatives_of_z = long_form_comp(Z);

dZdt(1) = Z(2);
dZdt(2) = Z2d ; % may need to modify this.
dZdt(3) = Z(4);
dZdt(4) = Z(10);
dZdt(5) = Z(6);
dZdt(6) = Z(12);
dZdt(7) = -(Z(8))*z2d_z1(a,b,Z);
dZdt(8) = -Z(7)-(Z(8))*z2d_z2(a,b,Z);
dZdt(9) = -(Z(8))*z2d_z3(a,b,Z);
dZdt(10) = Z(9) ; % may need to modify this.
dZdt(11) = -(Z(8))*z2d_z5(a,b,Z);
dZdt(12) = Z(11);
end