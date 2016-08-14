# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    m,b,e,d=0,0,0,0
    for i in (0..prices.size-1)
        e=i
        d=prices[e]-prices[b]
        if d<=0
            b=i
        end
        if d>m
            m=d
        end
    end
    return m
end