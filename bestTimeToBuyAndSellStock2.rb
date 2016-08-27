# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    prices.each_cons(2).map(&->(p1, p2){ [p2 - p1, 0].max }).reduce(0, &:+)
end