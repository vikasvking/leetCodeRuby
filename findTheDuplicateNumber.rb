# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    slow,fast=nums.size,nums.size
    loop do
        slow,fast=nums[slow-1],nums[nums[fast-1]-1]
        break if slow==fast
    end
    slow=nums.size
    slow,fast=nums[slow-1],nums[fast-1] while slow!=fast
    return slow
end