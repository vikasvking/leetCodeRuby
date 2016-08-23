# @param {Integer} n
# @return {Integer}
def bulb_switch(n)
    cnt=0
    i=1
    while i*i<=n
        cnt+=1
        i+=1
    end
    return cnt
end