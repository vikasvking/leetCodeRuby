# @param {String} s
# @return {String}
require 'set'
def reverse_vowels(s)
    vowel=Array.new
    set=Set.new
    temp=['a','e','i','o','u','A','E','I','O','U']
    temp=temp.to_set
    s.each_char do |i|
        if temp.include?(i)
            vowel.push(i)
        end
    end
    ans=""
    s.each_char do |i|
        if temp.include?(i)
            ans+=vowel.pop
        else
            ans+=i
        end
    end
    return ans
end