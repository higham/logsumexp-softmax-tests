function [f,g,h] = lse_chopshift(x)
% FUNCTION [F,G] = LSE_CHOPSHIFT(X)
%
% Shift impl. of logsumexp: f  (Thm 4.2)
%                   and softmax: g (Thm 4.3)
%             and alt. softmax: h (Thm 4.4)
% Uses chopped arithmetic
% Assumes x has been chopped
%
% MAY 2019

n = length(x);
e = zeros(n,1);
g = zeros(n,1);
h = zeros(n,1);
s = 0;
[xmax,k] = max(x); a = chop(xmax);
for i = 1:n
    if i ~= k
       e(i) = chop(exp(chop(x(i) - a)));
       s = chop(s + e(i));
    end
end

b = chop(log1p(s));
f = chop(a + b);

for i = 1:n
    h(i) = chop(exp(chop(x(i) - f)));
end

e(k) = chop(1);  %needed below
for i = 1:n
    g(i) = chop(e(i)/chop(1+s));
end
