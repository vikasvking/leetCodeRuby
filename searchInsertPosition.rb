# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    nums.each_index do |i|
        if nums[i]>=target
            return i
        end
    end
    return nums.size
end