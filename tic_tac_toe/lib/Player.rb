class Player
    def initialize(symbol)
        @player_symbol = symbol
    end
    attr_reader :player_symbol
    def make_move
        print "Make you move (enter number of cell position 1-9)"
        position = gets.chomp.to_i
        if position < 1 || position > 9
            puts "wrong cell number"
            make_move
        else position
        end
    end
end