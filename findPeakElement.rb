# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
   lbound, ubound = 0, nums.size - 1

  while ubound - lbound > 1
    m = (ubound + lbound) / 2

    if nums[m] < nums[m + 1]
      lbound = m
    else
      ubound = m
    end
  end

  return ubound if nums[lbound] < nums[ubound]
  return lbound
        
end