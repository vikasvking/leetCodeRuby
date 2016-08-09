def move_zeroes(nums)
    c=nums.count(0)
    nums.select!{|i| i!=0}
    c.times do 
        nums.push(0)
    end
end