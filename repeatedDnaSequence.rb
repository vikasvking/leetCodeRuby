# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
    map , ans = {},[]
    0.upto(s.size-10) do |idx|
        str=s.slice(idx,10)
        ans << str if map[str]
        map[str]=true
    end
    ans.uniq
end