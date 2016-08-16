# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
    h=Hash.new
    nums.each do |i|
        if h[i]
            h[i]+=1
        else
            h[i]=1
        end
    end
    ans=Array.new
    h.each do |k,v|
        if v>nums.size/3
            ans.push(k)
        end
    end
    return ans
end