#write your code here
#pig latin
def translate str
    words = str.split(' ')
    result = []
    alpha = ('a' .. 'z').to_a
    vowels = ['a','e','i','o','u']
    consonants = alpha - vowels
    
    words.each do |word|
        if vowels.include?(word[0])
            result.push(word + 'ay')
        elsif consonants.include?(word[0]) && 'q'.include?(word[1]) && 'u'.include?(word[2])
            result.push(word[3..-1] + word[0..2] + 'ay')
        elsif 'q'.include?(word[0]) && 'u'.include?(word[1])
            result.push(word[2..-1] + word[0..1] + 'ay')
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
            result.push(word[3..-1] + word[0..2] + 'ay')
        elsif consonants.include?(word[0]) && consonants.include?(word[1])
            result.push(word[2..-1] + word[0..1] + 'ay')
        elsif consonants.include?(word[0])
            result.push(word[1..-1] + word[0] + 'ay')
        else
            result.push(word)
        end
    end

 result.join(' ')

end