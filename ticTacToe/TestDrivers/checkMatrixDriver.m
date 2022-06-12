% Testing when a row is equal to O
% Expected output: 1
A = [2,2,2;2,0,1;0,1,2];
disp(A);
disp(checkMatrix(A));

%Testing when a column is equal to X
% Expected output: 1
A = [2,1,2;1,1,2;2,1,1];
disp(A);
disp(checkMatrix(A));

% Testing when a diagonal is equal to X
% Expected output: 1
A = [1,1,0;0,1,2;2,0,1];
disp(A);
disp(checkMatrix(A));

% Testing when there is no winning condition 
% Expected output: 0
A = [0,0,0;0,0,0;0,0,0];
disp(A);
disp(checkMatrix(A));
