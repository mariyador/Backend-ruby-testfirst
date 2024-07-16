#write your code here
def echo(input)
    "#{input}"
end

def shout(input)
   input.upcase
end

def repeat(input, number = 2)
    ([input] * number).join(' ')
end

def start_of_word(input, number = 1)
    input.slice(0, number)
end

def first_word(input)
    input.split.first
end

def titleize(input)
    little_words = %w[a an and the or for of over]
    words = input.split
    words.first.capitalize!
    words.map { |word| little_words.include?(word) ? word : word.capitalize }.join(' ')
end