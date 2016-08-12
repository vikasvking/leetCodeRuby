# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
   if n==0
       return false
   end
   x=n&(n-1)
   if x==0 then return true else return false end
end