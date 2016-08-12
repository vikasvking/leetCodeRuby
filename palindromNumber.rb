# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x<0
        x=!x
    end
    y=x.to_s.split('').reverse
    x=x.to_s.split('')
    for i in (0..x.size-1)
        if x[i]==y[i]
            next
        else
            return false
        end
    end
    return true
end