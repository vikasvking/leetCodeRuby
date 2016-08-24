# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    fib=Array.new(n+1)
    fib[0]=1
    fib[1]=1
    for i in (2..n)
        fib[i]=fib[i-1]+fib[i-2]
    end
    return fib[n]
end