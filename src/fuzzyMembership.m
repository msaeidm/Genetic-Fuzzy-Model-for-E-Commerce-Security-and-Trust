function mu = fuzzyMembership(x, a, b, c, d)
% fuzzyMembership computes the trapezoidal fuzzy membership value.
%   x - input value
%   a, b, c, d - parameters defining the trapezoidal membership function
%
% Returns:
%   mu - membership degree (0 to 1)

if x < a
    mu = 0;
elseif x < b
    mu = (x - a) / (b - a);
elseif x <= c
    mu = 1;
elseif x < d
    mu = (d - x) / (d - c);
else
    mu = 0;
end
end
