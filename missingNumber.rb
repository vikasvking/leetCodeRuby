# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    a=0
    b=0
    nums.each do |i|
        a=a^i
    end
    for i in (0..nums.size)
        b=b^i
    end
    return a^b
end