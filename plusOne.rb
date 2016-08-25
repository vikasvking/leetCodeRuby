# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    digits=digits.join.to_i+1
    digits=digits.to_s.split('').map{|i| i.to_i}
    return digits
end