# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    h1=Array.new(26,0)
    h2=Array.new(26,0)
    s.each_char do |i|
        h1[i.ord-'a'.ord]+=1
    end
    t.each_char do |i|
        h2[i.ord-'a'.ord]+=1
    end
    return h1==h2
end