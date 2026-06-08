class Word 
    attr_reader :word

    def initialize (file_path)
        lines = File.readlines(file_path, chomp:true)
        @word = lines.select {|line| line.length > 5 && line.length <= 12}.sample
    end
end