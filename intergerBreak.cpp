# @param {Integer} n
# @return {Integer}
def integer_break(n)
    return 1 if n==2
    return 2 if n==3
    ans=1
    ans,n=ans*3,n-3 while n>4
    ans*=n
    ans
end