# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    len=nums.size
    result=Array.new(len){1}
    for i in (1..len-1)
        result[i]=result[i-1]*nums[i-1]
    end
    fact=1
    i=len-2
    while i>=0
        fact*=nums[i+1]
        result[i]*=fact
        i-=1
    end
    
    return result
end