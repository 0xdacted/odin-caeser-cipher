# algo: takes input string and integer, splits each string into an array of individual characters,
# compares each character in the array to an array of the alphabet, 
# shifts each character integer positions in the alphabet array index and returns the result
require 'pry-byebug'


def caeser_cipher(string,shift)
  alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  string_array = string.downcase.split('')
  ciphered_text = ''

  string_array.each do|character| 
    unless character == ' '
      alphabet.each_with_index do|letter, index| 
      if letter == character
      
       unless index.to_i + shift.to_i > 25
        ciphered = alphabet[index.to_i + shift.to_i]

       else ciphered = alphabet[index.to_i + shift.to_i - 25]

      ciphered_text << ciphered
       end

       
    else
    ciphered_text << (' ')
    end
  end
  ciphered_text 

end
end
end

p caeser_cipher("what a life", 7)