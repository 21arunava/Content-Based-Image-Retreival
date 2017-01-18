% Works to decompose the passed image matrix...

% ------------------------------------------------------------
% Executes on being called, with input image matrix.
% ------------------------------------------------------------
function [Tl, Tr, Bl, Br] = decompose(imMatrix)

[A,B,C,D] = dwt2(imMatrix,'db1');

Tl = wcodemat(A);       % Top left...
Tr = wcodemat(B);       % Top right...
Bl = wcodemat(C);       % Bottom left...
Br = wcodemat(D);       % Bottom right...


% Display the image decomposition... [For testing purposes]
%figure
%colormap(gray)
%imagesc([Tl, Tr; Bl, Br]);

% ------------------------------------------------------------
