# @param {String} s
# @return {Boolean}
def is_valid(s)
    if s.size%2!=0
        return false
    end
    c=0
    temp=Array.new
    s.each_char do |i|
        if i=='(' or i=='{' or i=='['
            temp.push(i)
            c+=1
        else
            t=temp.pop
            if (i==']' && t=='[') or (i=='}' && t=='{' ) or ( i==')' &&t=='(')
                next
            else
                return false
            end
        end
    end
    return temp.empty?
end