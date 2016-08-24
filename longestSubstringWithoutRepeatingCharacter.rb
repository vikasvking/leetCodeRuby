# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
    return 0 if s.empty?
    chars=256
    n=s.size
    cur_len=1
    max_len=1
    prev_index=0
    visited=Array.new(chars,-1)
    visited[s[0].ord]=0
    for i in (1..n-1)
        prev_index=visited[s[i].ord]
        if prev_index==-1 || (i-cur_len>prev_index)
            cur_len+=1
        else
            if cur_len>max_len
                max_len=cur_len
            end
            cur_len=i-prev_index
        end
        visited[s[i].ord]=i
    end
    if cur_len>max_len
        max_len=cur_len
    end
    return max_len
end