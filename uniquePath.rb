# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    ans=Array.new(m+1,1){Array.new(n+1,1)}
    for i in (1..m-1)
        for j in (1..n-1)
            ans[i][j]=ans[i-1][j]+ans[i][j-1]
        end
    end
    ans[m-1][n-1]
end