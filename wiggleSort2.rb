# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def wiggle_sort(nums)
    sorted,midd=nums.sort,(nums.size-1)/2
    nums.map!.with_index{|_,i| sorted[(i.even? ? midd:-1)-i/2]}
end