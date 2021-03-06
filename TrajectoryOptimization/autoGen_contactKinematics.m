function [p2c,dp2c] = autoGen_contactKinematics(qf1,qf2,ql1,ql2,dqf1,dqf2,dql1,dql2,l,d,r)
%AUTOGEN_CONTACTKINEMATICS
%    [P2C,DP2C] = AUTOGEN_CONTACTKINEMATICS(QF1,QF2,QL1,QL2,DQF1,DQF2,DQL1,DQL2,L,D,R)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    13-Jun-2015 09:38:56

t2 = cos(qf1);
t3 = cos(ql1);
t4 = cos(ql2);
t5 = cos(qf2);
t6 = sin(qf1);
t7 = sin(qf2);
t8 = sin(ql1);
t9 = sin(ql2);
p2c = [d.*t6-d.*t7-l.*t8+l.*t9-qf1.*r;-d.*t2+d.*t5+l.*t3-l.*t4];
if nargout > 1
    dp2c = [-dqf1.*(r-d.*t2)-d.*dqf2.*t5-dql1.*l.*t3+dql2.*l.*t4;d.*dqf1.*t6-d.*dqf2.*t7-dql1.*l.*t8+dql2.*l.*t9];
end
