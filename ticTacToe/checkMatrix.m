function [win] = checkMatrix(numMatrix)
% Takes in a 2D array which represents a tictactoe board as input and
% checks if a winning condition has been met
    % The conditional statements below check if the product of the rows or
    % columns of numMatrix equal 1 or 8. If they equal 1, then that entire
    % row or column must be filled with X, and if it equals exactly 8, then
    % it must be filled with O as the value of X is represented by 1 and O
    % is represented by 2
    if prod(numMatrix(1,:)) == 1 || prod(numMatrix(1,:)) == 8
        % Setting win to true, indicating a winning condition is met
        win = true;
    elseif prod(numMatrix(2,:)) == 1 || prod(numMatrix(2,:)) == 8
        win = true;
    elseif prod(numMatrix(3,:)) == 1 || prod(numMatrix(3,:)) == 8
        win = true;
    elseif prod(numMatrix(:,1)) == 1 || prod(numMatrix(:,1)) == 8
        win = true;
    elseif prod(numMatrix(:,2)) == 1 || prod(numMatrix(:,2)) == 8
        win = true;
    elseif prod(numMatrix(:,3)) == 1 || prod(numMatrix(:,3)) == 8
        win = true;
    % The final two statements below check for the diagonals of numMatrix
    % using the diag function, taking the 1st diagonal of the 2D array
    elseif prod(diag(numMatrix)) == 1 || prod(diag(numMatrix)) == 8
        win = true;
   % To take the opposite diagonal of numMatrix, the array is first
   % reversed using the flip function and then diag() retrieves the
   % diagonal
    elseif prod(diag(flip(numMatrix))) == 1 || prod(diag(flip(numMatrix))) == 8
        win = true;
    else
        % If no winning condition is met, win is false
        win = false;
    end   

end