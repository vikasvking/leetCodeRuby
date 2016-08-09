# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    nums.sort!
    for i in (0..nums.size-2)
        if nums[i]==nums[i+1]
            return true
        end
    end
    return false
end