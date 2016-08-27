# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    strs.group_by(&->(strs){strs.chars.sort.join}).values
end