function [pc,dpc] = autoGen_kinematics_contact(x,dx,y,dy,q,dq,th,r)
%AUTOGEN_KINEMATICS_CONTACT
%    [PC,DPC] = AUTOGEN_KINEMATICS_CONTACT(X,DX,Y,DY,Q,DQ,TH,R)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    13-Aug-2015 08:58:27

t2 = q+th;
t3 = cos(t2);
t4 = sin(t2);
pc = [x+r.*t4;y-r.*t3];
if nargout > 1
    dpc = [dx+dq.*r.*t3;dy+dq.*r.*t4];
end
