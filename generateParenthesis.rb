# @param {Integer} n
# @return {String[]}

def generate_parenthesis(n)
    [].tap do |result|
        _generate(n,0,0,"",result)
    end
end
private def _generate(n,left,right,s,result)
    if left+right==2*n
        result << s;return
    end
    _generate(n,left+1,right,s+'(',result) if left<n
    _generate(n,left,right+1,s+')',result) if right<n && right<left
end
