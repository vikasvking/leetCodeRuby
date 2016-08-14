# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    arr=Array.new
    nums.each_index do |i|
        arr.push([nums[i],i])
    end
    arr.sort!
    for i in (0..arr.size-2)
        if arr[i][0]==arr[i+1][0]
            if (arr[i][1]-arr[i+1][1]).abs<=k
                return true
            end
        end
    end
    return false
end