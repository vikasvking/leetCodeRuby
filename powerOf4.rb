# @param {Integer} num
# @return {Boolean}
def is_power_of_four(num)
    return num>0 && (num==4**((Math.log(num)/Math.log(4)).round))
end