# @param {String} s
# @return {Integer}
def title_to_number(s)
    m={}
    Range.new("A","Z").each_with_index {|ch,idx| m[ch]=idx+1}
    sum=0
    s.each_char do |i|
        sum=sum*26+m[i]
    end
    return sum
end