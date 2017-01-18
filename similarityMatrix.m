% Works to obtain the Similarity Matrix between two HSV color
% histograms. This is to be used in the Histogram Quadratic 
% Distance equation.

% ------------------------------------------------------------
% Executes on being called, with input matrices I and J.
% ------------------------------------------------------------
function value = similarityMatrix(I, J)

% Obtain the Matrix elements... r - rows, c - columns. The
% general assumption is that these dimentions are the same
% for both matrices.
[r,c,p] = size(I);

A = [];



for i = 1:r
    for j = 1:c
        % (sj * sin hj - si * sin hi)^2
        M1 = (I(i, 2) * sin(I(i, 1)) - J(j, 2) * sin(J(j, 1)))^2;
        % (sj * cos hj - si * cos hi)^2
        M2 = (I(i, 2) * cos(I(i, 1)) - J(j, 2) * cos(J(j, 1)))^2;
        % (vj - vi)^2
        M3 = (I(i, 3) - J(j, 3))^2;
        
        M0 = sqrt(M1 + M2 + M3);
        
        %A(i, j) = 1 - 1/sqrt(5) * M0;
        A(i, j) = 1 - (M0/sqrt(5));  
    end
end
        
    
%Obtain Similarity Matrix...
value = A;

% ------------------------------------------------------------
