% Works to obtain the Quadratic Distance between two Colour images

% ------------------------------------------------------------
% Executes on being called, with inputs:
%   X1 - number of pixels of 1st image
%   X2 - number of pixels of 2nd image
%   map1 - HSV colour map of 1st image
%   map2 - HSV colour map of 2nd image
% ------------------------------------------------------------
function [value1,value2,value3] = quadratic1(X1, map1, X2, map2)

% Obtain the histograms of the two images...
% [count1, y1] = imhist(X1, map1);
% [count2, y2] = imhist(X2, map2);

[rHist1 gHist1 bHist1] = rgbhist(X1);
[rHist2 gHist2 bHist2] = rgbhist(X2);
% Obtain the difference between the pixel counts...
% q = count1 - count2;
% s = abs(q);
q1 = rHist1 - rHist2;
s1 = abs(q1);
q2 = gHist1 - gHist2;
s2 = abs(q2);
q3 = bHist1 - bHist2;
s3 = abs(q3);


% Obtain the similarity matrix...
A = similarityMatrix(map1, map2);

% Obtain the quadratic distance...
d1 = s1.'*A*s1;
d1 = d1^1/2;
d1 = d1 / 1e8;

d2 = s2.'*A*s2;
d2 = d2^1/2;
d2 = d2 / 1e8;

d3 = s3.'*A*s3;
d3 = d3^1/2;
d3 = d3 / 1e8;

% Return the distance metric.
value1 = d1;
value2 = d2;
value3 = d3;

% ------------------------------------------------------------