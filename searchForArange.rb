# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    a,b=-1,-1
    a=nums.index(target) if nums.index(target)!=nil
    b=nums.rindex(target) if nums.rindex(target)!=nil
    return [a,b]
end