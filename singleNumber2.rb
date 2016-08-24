# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    h=Hash.new
    nums.each do |i|
        if h[i] then h[i]+=1 else h[i]=1 end
    end
    h.each do |k,v|
        return k if v==1
    end
end