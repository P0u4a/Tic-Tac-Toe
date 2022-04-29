function [matrix, numMatrix, playAgain] = rematch(matrix, numMatrix)
% Takes two matrices representing a tic-tac-toe board and 
% returns two empty boards if the player wants to play again or ends the
% game if the player does not. It also returns a boolean finishGame which
% determines wheter the game is replayed or not
    
    % Get user input, which is a string value of either y or n
    playAgain = input("Play again? y/n: ", "s");
    
    % Reset both 2D arrays back to their initial state if player chooses y
    % set playAgain to true such that the game loop continues
    if playAgain == "y" 
        matrix = strings(3,3);
        numMatrix = zeros(3,3);
        disp(matrix);
        playAgain = true;
    % Thank the player
    else
        fprintf("Thanks for playing. \n")
        % Set playAgain to false so that the main game loop ends
        playAgain = false;
    end

end