sigma = 0.5;
obj1 = gmdistribution([0 2]', cat(3, sigma^2, sigma^2), [0.5 0.5]);
Y1 = random(obj1, 1e4);
res = log( (exp((4*Y1 - 4)./2*sigma^2)+1)./(exp((-4*Y1 - 4)./2*sigma^2)+1) );
hist(res, -3:0.01:5)