# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.keep_if{|i| i!=val}
    return nums.size
end