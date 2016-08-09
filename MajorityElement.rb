# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    h=Hash.new
    nums.each do |i|
        if h[i]
            h[i]+=1
        else
            h[i]=1
        end
    end
    return h.max_by{|k,v| v}[0]
end