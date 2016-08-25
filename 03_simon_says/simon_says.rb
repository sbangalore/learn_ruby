#write your code here
def echo(word)
    return word
end

def shout(word)
    return echo(word).upcase
end

def repeat(word, times=2)
    return word + (' '+word) * (times-1)
end

def start_of_word(word, chars)
    return word[0, chars]
end

def first_word(word)
    return word.split.first()
end

def titleize(word)
    words = word.split(' ')
    little_words = ['and','the','or','over','to','the','a','but']
    initial = word.split[0]
    result = initial[0].upcase + initial[1,initial.length]
    words.drop(1).each do |value|
        if not little_words.include?(value)
            result << ' ' + value[0].upcase + value[1,value.length]
        else
            result << ' ' + value
        end
    end
    return result
end