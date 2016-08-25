class Book

    attr_accessor :title
    
    def title=(new_title)
        words = new_title.split(' ')
        prepositions = ['on','in','at', 'since', 'for', 'ago', 'before', 'to', 'past', 'to', 'till','until','by']
        little_words = ['and','the','or','over','the','a','an','but','for','and','nor','yet','so','of'] + prepositions
        result = [words[0][0].upcase+words[0][1..-1]]
        words[1..-1].each do |word|
            if little_words.include? word
                result.push(word)
            else
                word = word[0].upcase + word[1..-1]
                result.push(word)
            end
        end
        @title = result.join(' ')
    end
end