LETTERS = [*('a'..'z')]
FACTOR = 5

def find_position(char = 'a', factor = FACTOR, letters = LETTERS)

  current_char_index = letters.find_index char.downcase
  new_char_index = current_char_index + factor

  if new_char_index <= letters.length - 1
    return new_char_index
  else
    new_char_index -= letters.length
    return new_char_index
  end
end


def caesar_cipher(phrase, factor = FACTOR, letters = LETTERS)

  words_array = phrase.split

  words_array.map! do |word|
    word_swapped = ""

    word.each_char do |char|
      if !letters.include? char.downcase
        word_swapped << char
      else
        word_swapped << letters[find_position(char, factor)] if char == char.downcase
        word_swapped << letters[find_position(char, factor)].upcase if char == char.upcase
      end
    end

    word_swapped
  end

  puts words_array.join(" ")
end

def encrypt_phrase
  puts "Which phrase would you like to encrypt?"
  user_phrase = gets.chomp

  puts "Which factor would you like to use? (1 to 24)"
  user_factor = gets.chomp.to_i

  while !user_factor.between? 1, 24
    puts "Please enter a valid factor:"
    user_factor = gets.chomp.to_i
  end


  caesar_cipher user_phrase, user_factor
end

encrypt_phrase
