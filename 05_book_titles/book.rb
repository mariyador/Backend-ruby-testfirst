class Book
    # write your code here
        attr_accessor :title
    
        def title=(word)
            @title = capitalize(word)
        end
    
        private
        def capitalize(title)
            little_words = ['and', 'over', 'the', 'a', 'an', 'of', 'in']
            arr = title.split
            arr.map!.with_index do |word, index|
                if index == 0 || !little_words.include?(word)
                    word.capitalize
                else
                    word
                end
            end
        arr.join(' ')
    end
 end