require_relative 'lib/Colors'                                                                                                                                                                                       
require_relative 'lib/Code'
require_relative 'lib/Guess'
require_relative 'lib/Feedback'
require_relative 'lib/Game'

puts "Welcome to Mastermind!"
puts "\nColors:"
Colors::LABELS.each { |n, name| puts "  #{n} → #{Colors::COLORS[n]} #{name}" }
puts "\n"
                                                                                                                                                                                                                    
Game.new.play