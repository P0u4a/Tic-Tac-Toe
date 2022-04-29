function [tie] = isTie(matrix)
% Takes a string array as a parameter and returns true if the array has no
% empty entries, otherwsie returns false

    % Initialise emptyCells
    emptyCells = 0;
    % The nested for loop searches through "matrix" and whenever there is
    % an empty cell in the array, the value of emptyCells is increased by 1
    for r = 1:size(matrix,1)
        %emptyCells = 0;
        for c = 1:size(matrix,2)
            if matrix(r,c) == ""
                emptyCells = emptyCells + 1;
            end
        end
    end

    % If emptyCells is 0 when the for loop has completed running, then
    % there must be no empty cells left
    if emptyCells == 0
        % If this function runs, then checkMatrix must have returned false,
        % hence there is a tie if no empty cells exist
        tie = true;
    else
        % If there are empty cells remaining, then the game has not
        % finished
        tie = false;
    end

end