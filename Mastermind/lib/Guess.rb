                                                                                                                                                                    
class Guess     
    def make_guess
        loop do
            puts "Enter number between 1 and 6 separated by spaces:"
            input = gets.chomp.split.map(&:to_i)
            return input if valid?(input)
            puts "Invalid input. Enter exactly 4 numbers between 1 and 6."
        end
    end
    def valid?(input)
        input.length == 4 && input.all? {|n| n.between?(1, 6)}
    end                                                                                                                                                                                                        
end