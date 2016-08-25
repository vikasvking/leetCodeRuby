# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    m = Hash.new { |hash, key| hash[key] = 0 }
  nums.each { |n| m[n] -= 1 }
  m.sort_by(&:last).take(k).map(&:first)
end