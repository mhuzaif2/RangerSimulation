function [p,dp,ddp] = autoGen_kinematics(q,dq,ddq,r,slope)
%AUTOGEN_KINEMATICS
%    [P,DP,DDP] = AUTOGEN_KINEMATICS(Q,DQ,DDQ,R,SLOPE)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    13-Aug-2015 08:53:37

t2 = cos(slope);
t3 = sin(slope);
p = [-r.*t3-q.*r.*t2;r.*t2-q.*r.*t3];
if nargout > 1
    dp = [-dq.*r.*t2;-dq.*r.*t3];
end
if nargout > 2
    ddp = [-ddq.*r.*t2;-ddq.*r.*t3];
end
