% Testing an empty string array
% Expected output: 0
matrix = strings(3,3);
disp(isTie(matrix));

% Testing a string array with no empty entries
% Expected output: 1
matrix = ["O","O","O";"X","O","O";"O","X","X"];
disp(isTie(matrix));

% Testing a string array with 1  non empty entry
% Expected output: 0
matrix = ["X","",""];
disp(isTie(matrix));