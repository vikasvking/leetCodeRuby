# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    s=s.split("").sort!
    t=t.split("").sort!
    (0...s.size).each do |i|
        return t[i] if s[i]!=t[i]
    end
    return t.last
end