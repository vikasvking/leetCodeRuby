# @param {Integer} x
# @return {Integer}
def reverse(x)
    pos=true
    if x<0
        pos=false
    end
    x=x.to_s.split('').reverse.join.to_i
    if x>2147483647
        return 0
    end
    if pos
        return x
    else
        return -1*x
    end
end