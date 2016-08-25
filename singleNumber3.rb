# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
    h={}
    nums.each do |i|
        if h[i] then h[i]+=1 else h[i]=1 end
    end
    ans=[]
    h.each do |k,v|
        ans << k if v==1
    end
    ans
        
end