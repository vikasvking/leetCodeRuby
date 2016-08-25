# @param {Integer} n
# @return {String}
def convert_to_title(n)
    m={}
    Range.new("A","Z").each_with_index {|ch,idx| m[idx]=ch}
    str=""
    while n>0
        str.insert(0,m[(n-1)%26])
        n=(n-1)/26
    end
    str
end