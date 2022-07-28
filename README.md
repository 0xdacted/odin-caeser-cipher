# odin-caeser-cipher
A simple caeser cipher project built in Ruby

Takes input string and integer, splits each string into an array of individual characters, unless the target character is a space, '?', or '!', compares each character in the array to an array of the alphabet.

Adds the shift integer to the alphabet arrays index integer and returns the case sensitive letter at the resulting index in the alphabet array.

If the result of adding the two integers is greater than or equal to 26, the resulting index loops back to 0.

Completed first elements of testing on this project.