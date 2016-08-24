# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return haystack.index(needle) || -1
end