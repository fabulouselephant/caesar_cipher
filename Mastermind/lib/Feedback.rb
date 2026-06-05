class Feedback
    EXACT = "\e[37m●\e[0m"
    COLOR = "\e[37m○\e[0m"
    
    def initialize(secret, guess)
        @secret = secret
        @guess = guess
    end

    def result
        exact = count_exact
        color = count_color - exact
        (EXACT * exact) + (COLOR * color)
    end

    private 
    def count_color
        @secret.uniq.sum do |color|
            [@secret.count(color), @guess.count(color)].min
        end
    end

    def count_exact
        @secret.zip(@guess).count {|s, g| s == g}
    end
end