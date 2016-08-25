# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    map={}
    while true
        s=0
        while n>0
            s=s+(n%10)*(n%10)
            n=n/10
        end
        return true if s==1
        return false if map[s]
        map[s]=true
        n=s
    end
end