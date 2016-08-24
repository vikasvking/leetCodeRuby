# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
    if nums.empty?
        return 0
    end
    lis=Array.new(nums.size,1)
    for i in (1..nums.size-1)
        for j in (0..i-1)
            if nums[i]>nums[j] && lis[i]<lis[j]+1
                lis[i]=lis[j]+1
            end
        end
    end
    return lis.max
end