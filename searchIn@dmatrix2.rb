# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    return false if matrix.empty?
    m,n=matrix.size,matrix[0].size
    i,j=0,n-1
    while i!=m && j!=-1
        case matrix[i][j]<=>target
            when -1;i+=1
            when 0;return true
            when 1;j-=1
        end
    end
    return false
end