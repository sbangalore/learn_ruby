#f = fahrenheit, c = celsius
def ftoc(f)
    return ((f - 32)/1.8).round
end

def ctof(c)
    return (c*1.8+32).round(2)
end