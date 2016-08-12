# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h=Hash.new
    nums.each_index do |i|
        h[nums[i]]=[true,i]
    end
    nums.each_index do |i|
        temp=target-nums[i]
        if temp>=0 && h[temp][0]
            return [i,h[temp][1]]
        end
    end
end

a,b=two_sum([0,4,3,0],0)
print "#{a} #{b}"