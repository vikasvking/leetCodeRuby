# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    return [1] if row_index==0
    row_index,row=row_index-1,[1,1]
    row_index.times do
        row=row.each_cons(2).map{|i,j| i+j}
        row.insert(0,1).push(1)
    end
    row
end