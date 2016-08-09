# @param {Integer} num
# @return {Integer}
def add_digits(num)
    if num<9 
        return num 
        end
    return num-9*((num-1)/9)
end