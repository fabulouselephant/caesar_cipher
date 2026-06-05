class Game
    WINNING_COMBOS = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8], # Rows
        [0, 3, 6], [1, 4, 7], [2, 5, 8], # Columns
        [0, 4, 8], [2, 4, 6]             # Diagonals
    ]
    def initialize (player1, player2, board)
        @player1 = player1
        @player2 = player2
        @board = board
        @game_is_over = false
    end

    def check_game_is_over 
        @game_is_over = @board.board.none? {|cell| cell == ' '}
    end
    def check_wins
        WINNING_COMBOS.each do |line|
            cells = line.map {|i| @board.board[i]}
                if cells.all? {|cell| cell == @player1.player_symbol}
                    @game_is_over = true
                    puts "Congratulation Player 1!"
                    return @player1
                elsif cells.all? {|cell| cell == @player2.player_symbol}
                    @game_is_over = true
                    puts "Congratulation Player 2!"
                    return @player2
                end
            end
        @game_is_over
    end
    def start_game
        @board.display_board
    end
    def play 
        current_player = @player1
        until @game_is_over do
            position = current_player.make_move
            @board.board[position - 1] = current_player.player_symbol
            winner = check_wins
            check_game_is_over unless @game_is_over
            puts "It's a draw!" if @game_is_over && winner.nil?
            current_player = current_player == @player1 ? @player2 : @player1
            @board.display_board
        end    
    end
end