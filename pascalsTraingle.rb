# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    return [] if num_rows==0
    return [[1]] if num_rows==1
    num_rows,rows,row=num_rows-2,[[1],[1,1]],[1,1]
    num_rows.times do
        row=row.each_cons(2).map{|i,j| i+j}
        row.insert(0,1).push(1)
        rows << row
    end
    rows
end