dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (text, dictionary)
    text.downcase.split(' ').each_with_object(Hash.new(0)) do |line, acc|
        dictionary.each do |word|
            puts word
            acc[word] += 1 if line.include?(word)
            acc
        end
    end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)