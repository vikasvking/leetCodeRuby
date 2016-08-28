# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
    Array(1..n).combination(k).to_a
end