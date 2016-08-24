# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    map=Hash.new
    nums.each_with_index do |num,idx|
        i=map[target-num]
        return [i,idx] if i
        map[num]=idx
    end
end

