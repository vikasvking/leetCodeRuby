# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    if s.size==0
        return 0
    end
    s=s.split(" ").map{|i| i.strip}.reverse!
    if s.empty?
        return 0
    end
    return s[0].size
end