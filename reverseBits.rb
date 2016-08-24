# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
    m=n&1
    31.times do |i|
        n>>=1
        m<<=1
        m+=n&1
    end
    m
end