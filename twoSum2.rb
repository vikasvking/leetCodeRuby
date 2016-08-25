# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    i,j=0,numbers.size-1
    while i<j
        if numbers[i]+numbers[j]<target
            i+=1
        elsif numbers[i]+numbers[j]>target
            j-=1
        else
            return [i+1,j+1]
        end
    end
end