# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    return 0 if nums.empty?
    incl, excl, excl_new=nums[0],0,0
    (1...nums.size).each do |i|
        if incl>excl then excl_new=incl else excl_new=excl end
        incl=excl+nums[i]
        excl=excl_new
    end
    return [incl,excl].max
end