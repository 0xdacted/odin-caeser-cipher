# takes input string and integer, splits each string into an array of individual characters,
# unless the target character is a space, '?', or '!', compares each character in the array to an array of the alphabet, 
# adds the shift integer to the alphabet arrays index integer and returns the case sensitive letter at the resulting index in the alphabet array
# if the result of adding the two integers is greater than or equal to 26, the resulting index loops back to 0
class Cipher
  def caeser_cipher(string,shift)
    alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    string_array = string.split('')
    ciphered_text = ''

    string_array.each do|character| 
      unless character == ' ' || character == '!' || character == '?' ||  character == '.' || character == '0' || character == '1' || 
        character == '2' || character == '3' || character == '4' || character == '5' || character == '6' || character == '7' || 
        character == '8' || character == '9'

        alphabet.each_with_index do|letter, index| 
        if letter == character
          position = index.to_i + shift.to_i

        unless position >= 26
          ciphered = alphabet[position]
          ciphered_text << ciphered

        else ciphered = alphabet[position - 26]
          ciphered_text << ciphered
        end

        elsif letter == character.downcase
          position = index.to_i + shift.to_i

          unless position >= 26
          ciphered = alphabet[position].upcase
          ciphered_text << ciphered
  
          else ciphered = alphabet[position - 26].upcase
          ciphered_text << ciphered
          end

        end
      end
      else
      ciphered_text << character
      end
    end
    ciphered_string = ciphered_text.to_s
    ciphered_string
  end
end

cipher = Cipher.new
p cipher.caeser_cipher("hgds", 5)
