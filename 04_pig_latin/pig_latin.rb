#write your code here
def translate(sentence)
    vowels = ['a', 'e', 'i', 'o', 'u']
    
    words = sentence.split(' ')
    translated_words = words.map do |word|
      if word.start_with?('qu')
        word[2..-1]+ 'quay'
      elsif word.start_with?('sch')
        word[3..-1]+ 'schay'
      elsif vowels.include?(word[0])
        word + 'ay'
      else
        consonant_count = 0
        while !vowels.include?(word[consonant_count])
          consonant_count += 1
        end
        if word[consonant_count - 1..consonant_count] == 'qu'
          consonant_count += 1
        end
        word[consonant_count..-1] + word[0...consonant_count] + 'ay'
      end
    end
    
    translated_words.join(' ')
  end
  