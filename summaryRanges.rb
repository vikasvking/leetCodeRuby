# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
    ans=[]
    c=0
    while c<nums.size
        ref=c
        c+=1 while nums[c]+1==nums[c+1]
        if c==ref
            ans<<"#{nums[ref]}"
        else
            ans << "#{nums[ref]}->#{nums[c]}"
        end
        c+=1
    end
      return ans 
        
end