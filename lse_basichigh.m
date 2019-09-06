function [f,g] = lse_basichigh(x)
% FUNCTION [F,G] = LSE_BASICHIGH(X)
%
% Basic implementation of logsumexp: f
%                                   and softmax: g
% HIgh (in this case, single) precision 
%
% MAY 2019

n = length(x);
s = 0;
e = zeros(n,1);
g = single(zeros(n,1));
for i = 1:n
    e(i) = exp(x(i));
    s = s + e(i);
end

f = log(s);

for i = 1:n
    g(i) = e(i)/s;
end
