
require_relative 'lib/Board'
require_relative 'lib/Player'
require_relative 'lib/Game'

player1 = Player.new('X')
player2 = Player.new('0')
board = Board.new
game = Game.new(player1, player2, board)
game.start_game
game.play