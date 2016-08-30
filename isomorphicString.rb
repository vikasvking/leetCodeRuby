# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    m1,m2={} , {}
    s.chars.each_with_index do |ch,idx|
        tc=t[idx]
        if m1.key?(ch) || m2.key?(tc)
            return false if m1[ch]!=tc
            return false if m2[tc]!=ch
        else
            m1[ch]=tc
            m2[tc]=ch
        end
    end
   return true         
end