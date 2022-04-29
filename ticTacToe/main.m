% Clear workspace and command window
clear;
clc;

% Setting gameEnd to false, ensuring the outermost while loop runs the game
% until the player quits
gameEnd = false;
% Initilising the 3x3 string array used to display the board
matrix = strings(3,3);
% Display the initial board to the user    
disp(matrix);

while gameEnd == false
    % Initilising the 3x3 array which is a numeric representation of the
    % Tic-tac-toe board, used to compute the winning conditions
    numMatrix = zeros(3,3);

    % Initialising win counts for each player
    playerOneWin = 0;
    playerTwoWin = 0;

    % Creating a while loop which will run until a winning condition is met or
    % there is a tie
    while true
        % Asking the player1 which Row/Col they will place their X
        playerOneRow = input("Which row will you place X in? ");
        playerOneCol = input("Which column will you place X in? ");
        % The while loop below checks that the coordinates chosen by player1
        % do not already have an X or O in them. If they do, the user is
        % prompted  to choose another coordinate.
        while matrix(playerOneRow, playerOneCol) ~= ""
            fprintf("That spot is already taken. Try again. \n") 
            playerOneRow = input("Which row will you place X in? ");
            playerOneCol = input("Which column will you place X in? ");        
        end
    
        % Creating an X at the coordinates stated by player1 inside the array
        matrix(playerOneRow, playerOneCol) = "X";
        numMatrix(playerOneRow,playerOneCol) = 1;
        disp(matrix);
        
        % Calling checkMatrix to see if a player has won
        win = checkMatrix(numMatrix);
        % If win is true, display who the winner is and ask the user if
        % they want to replay
        if win == true
            % If this code block runs then X must have won
            fprintf("X is the winner! \n");
            % Update win count for player 1
            playerOneWin = playerOneWin + 1;
            % Display the current win count to players
            fprintf("X %d | %d O \n", playerOneWin, playerTwoWin);
            % Calling rematch() to see if user wants to replay
            [matrix, numMatrix, playAgain] = rematch(matrix, numMatrix);
            % If the player does not choose to replay, break the loop
            if playAgain == false
                break
            end            
        end
        % Calling isTie to check if there is a tie, given that a winning
        % condition has not been met yet
        tie = isTie(matrix);
        % If tie is true, let the players know and call the rematch
        % function
        if tie == true
            fprintf("Draw! \n");
            [matrix, numMatrix, playAgain] = rematch(matrix, numMatrix);
            % If the player does not choose to replay, break the loop
            if playAgain == false
                break
            end
        end

        % Repeating the same process for player 2
        playerTwoRow = input("Which row will you place O in? ");
        playerTwoCol = input("Which column will you place O in? ");
        while matrix(playerTwoRow, playerTwoCol) ~= ""
            fprintf("That spot is already taken. Try again. \n")
            playerTwoRow = input("Which row will you place O in? ");
            playerTwoCol = input("Which column will you place O in? ");
        end
        matrix(playerTwoRow, playerTwoCol) = "O";
        numMatrix(playerTwoRow,playerTwoCol) = 2;
        disp(matrix);

        win = checkMatrix(numMatrix);
        if win == true
            % If this code block runs then O must have won
            fprintf("O is the winner! \n");
            % Update win count for player 2
            playerTwoWin = playerTwoWin + 1;
            % Display current win count to players
            fprintf("X %d | %d O \n", playerOneWin, playerTwoWin);
            [matrix, numMatrix, playAgain] = rematch(matrix, numMatrix);
            if playAgain == false
                break
            end
        end
        
        tie = isTie(matrix);
        if tie == true
            fprintf("Draw! \n");
            [matrix, numMatrix, playAgain] = rematch(matrix, numMatrix);
            if playAgain == false
                break
            end
        end
    end

    % If the player chooses the quit the game after a win or a draw, 
    % set gameEnd to true such that the outermost loop ends, completing the program
    gameEnd = true;
end

