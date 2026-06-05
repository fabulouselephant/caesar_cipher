class Game
    def initialize
        @code = ColorCode.new()
        @guess = Guess.new()
    end

    def play
        12.times do |attempt|                                                                                                                                                                                                    
            puts "\nAttempt #{attempt + 1}/12"
            user_guess = @guess.make_guess
            puts Colors.render(user_guess)
            feedback = Feedback.new(@code.code, user_guess)
            puts "Feedback: #{feedback.result}"

            if(user_guess == @code.code)
                puts "\nYou cracked the code!"
                return
            end 
        end
        puts "\nGame over! The code was: #{Colors.render(@code.code)}. #{@code.code}"
    end          
end