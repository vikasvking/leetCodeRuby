# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    sum,subsum=nums[0],nums[0]
    1.upto(nums.size-1){|i|
        subsum=0 if subsum<0
        subsum+=nums[i]
        sum=subsum if sum<subsum
    }
    sum
end