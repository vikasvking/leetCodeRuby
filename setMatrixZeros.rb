# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
    return if matrix.empty?
    m,n = matrix.size,matrix[0].size
    brow=(0...n).any?{|j| matrix[0][j].zero?}
    bcol=(0...m).any?{|i| matrix[i][0].zero?}
    (1...m).each do |i|
        (1...n).each do |j|
            matrix[0][j]=matrix[i][0]=0 if matrix[i][j].zero?
        end
    end
    (1...m).each do |i|
        (1...n).each do |j|
            if matrix[0][j].zero? || matrix[i][0].zero?
                 matrix[i][j]=0
             end
        end
    end
    ((0...n).each{|j| matrix[0][j]=0};nil) if brow
    ((0...m).each{|i| matrix[i][0]=0};nil) if bcol
end