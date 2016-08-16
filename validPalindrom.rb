# @param {String} s
# @return {Boolean}
def letter(str)
  !str.match(/[^a-z0-9]/)
end
def is_palindrome(s)
    s.downcase!
   temp=Array.new
   s.each_char do |i|
       if letter(i)
           temp.push(i)
       end
   end
   s.each_char do |i|
       if letter(i)
           if i==temp.pop
               next
           else
               return false
           end
       end
   end
   return true
end