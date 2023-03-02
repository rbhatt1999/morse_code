@morse_code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(character)
  @morse_code[character]
end

def decode_word(word)
  if word.is_a? String
    word_decode = ''
    word.split.each do |morse|
      dc = decode_char(morse)
      word_decode += dc.to_s
    end
  end
  word_decode
end

def split_sentence(sentence)
  if sentence.is_a? String
    sentence.split('   ')
  else
    puts 'Your input should be a string in double or single quote!'
  end
end

def decode(sentence)
  words = split_sentence(sentence)
  sentence_decode = ''
  words.each do |word|
    word_decode = decode_word(word)
    sentence_decode += "#{word_decode} "
  end
  sentence_decode.strip
end

puts decode_char('-...')
puts decode_word('-- -.--')
sentence = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(sentence)
