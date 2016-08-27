# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
    return [0] if num.zero?
    ans=Array.new(num+1,0).tap{|a| a[1]=1}
    ans.each_with_index{|_,n| ans[n]=ans[n>>1]+(n&0b1==0b1?1:0)}
    ans
end