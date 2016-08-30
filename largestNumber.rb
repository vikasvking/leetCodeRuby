# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
    func=->(a,b){b+a<=>a+b}
    n=nums.map(&:to_s).sort(&func).reduce(&:+)
   return "0" if n.split("").all?{|i| i=="0"}
   n
end