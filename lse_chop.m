function [f,g,h]  = lse_chop(x)
% FUNCTION [F,G,H] = LSE_CHOP(X)
% 
% Basic impl. of logsumexp: f (Thm 3.2)
%                   and softmax: g (Thm 3.3)
%         and an alt. softmax: h (Thm 3.4)
% Uses chopped arithmetic
% Assumes x has been chopped
%
% MAY 2019

n = length(x);
g = zeros(n,1);
h = zeros(n,1);
s = 0;
for i = 1:n
    e(i) = chop(exp(x(i)));
    s = chop(s + e(i));
end

f = chop(log(s));

for i = 1:n
    g(i) = chop(e(i)/s);
end

for i = 1:n
    h(i) = chop(exp(chop(x(i) - f)));
end