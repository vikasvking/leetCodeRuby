# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
    c=0
    i=5
    while n/i>=1
        c+=n/i
        i*=5
    end
    return c
end