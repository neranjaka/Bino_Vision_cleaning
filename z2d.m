function [z2d_value,S] = z2d(a,b,Z)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
z1=Z(1);
z2=Z(2); 
z3=Z(3);
z5=Z(5);
l2 = Z(8) ;
a1= a;
b1= b;

phi1R =acos((1/2).*(b1.^2.*cos(z1).^2+b1.^2.*sin(z1).^2+2.*a1.*b1.*sin( ...
  z1).*tan(z3)+a1.^2.*tan(z3).^2).^(-1).*((-1).*a1.*cos(z1).*((-2).* ...
 b1.*sin(z1)+(-2).*a1.*tan(z3)).*tan(z5)+(-1).*(4.*b1.^4.*cos(z1) ...
.^4+4.*b1.^4.*cos(z1).^2.*sin(z1).^2+8.*a1.*b1.^3.*cos(z1).^2.* ...
sin(z1).*tan(z3)+4.*a1.^2.*b1.^2.*cos(z1).^2.*tan(z3).^2+(-4).* ...
a1.^2.*b1.^2.*cos(z1).^4.*tan(z5).^2).^(1/2)));

S  = (b1.*cos(z1+(-1).*phi1R)+a1.*sin(phi1R).*tan( ...
 z3)).^(-1).*(b1.*cos(z1+(-1).*phi1R)+a1.*sin(z1).*tan( ...
 z5));

Sp = (b1.*cos(z1+(-1).*phi1R)+a1.*sin(phi1R).*tan( ...
z3)).^(-1).*(a1.*cos(z1).*tan(z5)+(-1).*b1.*sin(z1+(-1).*phi1R ...
).*(1+(-1).*(b1.*cos(z1+(-1).*phi1R)+a1.*sin( ...
  phi1R).*tan(z3)).^(-1).*(b1.*cos(z1+(-1).*phi1R ...
 )+a1.*sin(z1).*tan(z5))))+(-1).*(b1.*cos(z1+(-1).*phi1R ...
)+a1.*sin(phi1R).*tan(z3)).^(-2).*(b1.*cos(z1+(-1).* ...
phi1R)+a1.*sin(z1).*tan(z5)).*(a1.*cos(phi1R) ...
.*tan(z3).*(b1.*cos(z1+(-1).*phi1R)+a1.*sin(phi1R ...
 ).*tan(z3)).^(-1).*(b1.*cos(z1+(-1).*phi1R)+a1.*sin( ...
 z1).*tan(z5))+(-1).*b1.*sin(z1+(-1).*phi1R).*(1+(-1).*( ...
  b1.*cos(z1+(-1).*phi1R)+a1.*sin(phi1R).*tan( ...
  z3)).^(-1).*(b1.*cos(z1+(-1).*phi1R)+a1.*sin(z1).*tan( ...
  z5))));

z2d_value = (l2/(2*(1+S^2))+(17/4)*(z2^2)*(S)*(Sp))/(2*(1+S^2));

end

