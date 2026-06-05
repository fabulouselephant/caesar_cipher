class Board
    def initialize
        @board = Array.new(9, ' ')
    end
    attr_reader :board
    def display_board(*settled_nums)
        puts(" #{@board[0]} | #{@board[1]} | #{@board[2]} ")
        puts('---+---+---')
        puts(" #{@board[3]} | #{@board[4]} | #{@board[5]} ")
        puts('---+---+---')
        puts(" #{@board[6]} | #{@board[7]} | #{@board[8]} ")
    end
    def settle_symbol (symbol, position)
        @board[position - 1] = symbol
    end
end
