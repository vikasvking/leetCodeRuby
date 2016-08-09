# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    nums1.sort!
    nums2.sort!
    i,j=0,0
    ans=Array.new
    while i<nums1.size && j<nums2.size
        if nums1[i]==nums2[j]
            ans.push(nums1[i])
            i+=1
            j+=1
        elsif nums1[i]<nums2[j]
            i+=1
        else
            j+=1
        end
    end
    return ans
end