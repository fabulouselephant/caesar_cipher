alphabet = ('a'..'z').to_a + ('A'..'Z').to_a

puts 'Enter a message to encrypt'
message = gets.chomp

puts 'Enter a encode/decode value'
shift = gets.chomp.to_i

def encode_message(message, shift, alphabet)
    return 'Encode/decode value value is too large' if shift > 26
    return 'Encode/decode value value cannot be 0' if shift == 0
    return 'Message cannot be empty' if message.empty?

    new_message = ''
    message.chars.map do |char|
        if(alphabet.include?(char))
            index = char.ord
            if(index >= 97 && index <= 122)
                shifted_index = (index - 97 - shift) % 26 + 97
            elsif(index >= 65 && index <= 90)
                shifted_index = (index - 65 - shift) % 26 + 65
            end
            new_message.concat(shifted_index.chr)
        else
            new_message.concat(char)
        end
    end.join
    return new_message
end

puts encode_message(message, shift, alphabet)