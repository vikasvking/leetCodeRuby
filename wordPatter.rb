# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
    pattern=pattern.split('')
    str=str.split(" ")
    h1=Hash.new
    pattern.each_index do |i|
        if h1[pattern[i]]
            h1[pattern[i]].push(i)
        else
            h1[pattern[i]]=Array.new
            h1[pattern[i]].push(i)
        end
    end
    h2=Hash.new
    str.each_index do |i|
        if h2[str[i]]
            h2[str[i]].push(i)
        else
            h2[str[i]]=Array.new
            h2[str[i]].push(i)
        end
    end
    temp1=Array.new
    temp2=Array.new
    h1.each do |k,v|
        x=[]
        v.each do |i|
            x.push(i)
        end
       temp1.push(x)
    end
    h2.each do |k,v|
       x=[]
        v.each do |i|
            x.push(i)
        end
       temp2.push(x)
    end
  
    return temp1==temp2
        
end