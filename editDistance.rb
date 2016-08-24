# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
    dp=Array.new(word1.size+1){Array.new(word2.size+1)}
    for i in (0..word1.size)
        for j in (0..word2.size)
            if i==0
                dp[i][j]=j
            elsif j==0
                dp[i][j]=i
            elsif word1[i-1]==word2[j-1]
                dp[i][j]=dp[i-1][j-1]
            else
                dp[i][j]=1+[dp[i][j-1],dp[i-1][j],dp[i-1][j-1]].min
            end
        end
    end
    return dp[word1.size][word2.size]
            
end