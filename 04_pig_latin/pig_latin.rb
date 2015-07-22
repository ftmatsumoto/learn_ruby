def translate(phrase)
    words = phrase.split() # Split sentence into array of words
    words.each do |word|
        if word.start_with?('a','e','i','o','u')
            word << "ay"
        else
            while not word.start_with?('a','e','i','o','u')
                if word.start_with?('qu') # Special case for qu combo
                    word.insert(-1, 'qu')
                    word[0..1] = ''
                else
                    word.insert(-1, word[0]) # Moves first letter to end of word
                    word[0] = '' # Deletes first letter
                end
            end
            word << "ay"
            if word != word.downcase # Capitalizes previously capitalized words post-translation
                word.downcase!
                word.capitalize!
            end
        end
    end
    words.join(" ")
end