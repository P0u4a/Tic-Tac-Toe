A = ["X","X","O";"","","X";"O","O","X"];
B = [1,1,2;0,0,1;2,2,1];
% Testing if user inputs y
% Expected output: empty 3x3 string array
output = rematch(A,B);

%Testing if user inputs n
%Expected ouput: Thanks for playing.
output = rematch(A,B);

% Testing if user input some other string value
% Expected ouput: Thanks for playing. 
output = rematch(A,B);

% Testing if user input a number 
% Expected output: Thanks for playing.
output = rematch(A,B);