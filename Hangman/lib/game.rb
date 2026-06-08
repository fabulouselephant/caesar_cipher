require 'yaml'

class Game

    MAX_APPROACHES = 6

    SAVE_PATH = './saves/savegame.yaml'

    def self.resume_or_new
        if File.exist?(SAVE_PATH)
            puts "Resuming saved game..."
            YAML.load_file(SAVE_PATH, permitted_classes: [Game])
        else
            new(Word.new('google-10000-english-no-swears.txt').word)
        end
    end

    def initialize(word)
        @word_to_guess = word
        @display_word = Array.new(@word_to_guess.length, '_').join
        @approaches = MAX_APPROACHES
        @incorrect_guesses = []
        @correct_guesses = []
    end

    def play
        until game_over?
            puts "Your word to guess is #{@display_word} [#{@display_word.length} letters]"
            puts "You have #{@approaches} more tries"
            try_and_check_guess()
        end

        File.delete(SAVE_PATH) if File.exist?(SAVE_PATH)

        if won?
            puts "You won! The secret word was #{@word_to_guess}"
        else
            puts "You ran out of lives! The secret word was #{@word_to_guess}"
        end
    end

    def game_over?
        won? || ran_out_of_lives?
    end
    
    def won?
        @display_word == @word_to_guess
    end
    
    def ran_out_of_lives?
        @approaches <= 0
    end

    def try_and_check_guess()
        try = gets.chomp
        @approaches = @approaches - 1
        if try.length != @word_to_guess.length
            puts "Incorrect length, try again"

        elsif try.length == @word_to_guess.length
            if common_letters = try.chars & @word_to_guess.chars
                @correct_guesses += common_letters
                @word_to_guess.chars.each_with_index do |char, index| 
                    @display_word[index] = char if @correct_guesses.include?(char)
                end
                puts @display_word
                Dir.mkdir('saves') unless Dir.exist?('saves')
                File.open('saves/savegame.yaml', 'w') do |file|
                    file.write(YAML.dump(self))
                end
            end
        end
    end
    
end