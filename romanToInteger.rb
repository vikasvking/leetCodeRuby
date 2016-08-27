# @param {String} s
# @return {Integer}
def roman_to_int(s)
    map={'I'=>1,'V'=>5,'X'=>10,'L'=>50,'C'=>100,'D'=>500,'M'=>1000}
    sum=map[s[0]]
    s.chars.each_cons(2){|i,j|
        sum+=map[j]
        sum-=map[i]*2 if map[i]<map[j]
    }
    sum
end