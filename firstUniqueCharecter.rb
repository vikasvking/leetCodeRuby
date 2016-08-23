# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    h=Hash.new
    s.each_char do |i|
        if h[i]
            h[i]+=1
        else
            h[i]=1
        end
    end
    h.each do |k,v|
        if v==1
            return s.index(k)
        end
    end
    return -1
end