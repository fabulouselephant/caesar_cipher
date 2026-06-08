require 'yaml'

require_relative 'lib/word'
require_relative 'lib/game'

game = Game.resume_or_new
game.play
