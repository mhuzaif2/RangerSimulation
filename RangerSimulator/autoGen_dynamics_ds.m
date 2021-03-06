function [M_ds,f_ds] = autoGen_dynamics_ds(phi0,phi1,th0,th1,dphi0,dphi1,dth0,dth1,u0,u1,uHip,fx,fy,qc0,qc1,rc1,rc0,ddp1c_x,ddp1c_y,ddp0c_x,ddp0c_y,g,l,c,m,I,Ifoot,b)
%AUTOGEN_DYNAMICS_DS
%    [M_DS,F_DS] = AUTOGEN_DYNAMICS_DS(PHI0,PHI1,TH0,TH1,DPHI0,DPHI1,DTH0,DTH1,U0,U1,UHIP,FX,FY,QC0,QC1,RC1,RC0,DDP1C_X,DDP1C_Y,DDP0C_X,DDP0C_Y,G,L,C,M,I,IFOOT,B)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    30-Jan-2016 13:22:42

t2 = cos(th0);
t3 = sin(th0);
t4 = phi0+qc0;
t5 = cos(th1);
t6 = sin(th1);
t7 = c.^2;
t8 = -I-m.*t7;
t9 = phi1+qc1;
t10 = cos(t4);
t11 = rc0.*t10;
t12 = sin(t4);
t13 = rc0.*t12;
t14 = cos(t9);
t15 = rc1.*t14;
t16 = sin(t9);
t17 = rc1.*t16;
t18 = l.*t5;
t19 = l.*t6;
t20 = l.*t2;
t21 = l.*t3;
M_ds = reshape([m.*-2.0,0.0,-c.*m.*t2,-c.*m.*t5,0.0,0.0,-1.0,0.0,-1.0,0.0,0.0,m.*-2.0,-c.*m.*t3,-c.*m.*t6,0.0,0.0,0.0,-1.0,0.0,-1.0,0.0,0.0,-Ifoot,0.0,-Ifoot,0.0,0.0,0.0,-t11,-t13,0.0,0.0,0.0,-Ifoot,0.0,-Ifoot,-t15,-t17,0.0,0.0,-c.*m.*t2,-c.*m.*t3,t8,0.0,0.0,0.0,0.0,0.0,-t20,-t21,-c.*m.*t5,-c.*m.*t6,0.0,t8,0.0,0.0,-t18,-t19,0.0,0.0,1.0,0.0,0.0,t15+t18,0.0,t15,0.0,0.0,0.0,0.0,0.0,1.0,0.0,t17+t19,0.0,t17,0.0,0.0,0.0,0.0,1.0,0.0,t11+t20,0.0,t11,0.0,0.0,0.0,0.0,0.0,0.0,1.0,t13+t21,0.0,t13,0.0,0.0,0.0,0.0,0.0],[10,10]);
if nargout > 1
    t22 = dth0.^2;
    t23 = dth1.^2;
    t24 = b.*dphi0;
    t25 = b.*dphi1;
    t26 = dphi1.^2;
    t27 = dphi0.^2;
    f_ds = [-fx-m.*(c.*t3.*t22.*(1.0./2.0)+c.*t6.*t23.*(1.0./2.0)).*2.0;-fy+g.*m.*2.0+m.*(c.*t2.*t22.*(1.0./2.0)+c.*t5.*t23.*(1.0./2.0)).*2.0;t24+uHip+c.*g.*m.*t3;t25-uHip+c.*g.*m.*t6;t24+u0;t25+u1;-ddp1c_x-l.*t6.*t23-rc1.*t16.*t26;-ddp1c_y+l.*t5.*t23+rc1.*t14.*t26;-ddp0c_x-l.*t3.*t22-rc0.*t12.*t27;-ddp0c_y+l.*t2.*t22+rc0.*t10.*t27];
end
