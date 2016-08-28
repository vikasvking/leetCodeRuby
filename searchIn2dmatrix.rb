# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    return false if matrix.empty?
    m,n= matrix.size,matrix[0].size
    num=Range.new(0,m*n-1).bsearch do |ij|
        i,j=ij.divmod(n);matrix[i][j]>=target
    end || 0
    i,j = num.divmod(n)
    matrix[i][j]==target
end