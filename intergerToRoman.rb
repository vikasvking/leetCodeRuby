# @param {Integer} num
# @return {String}
def int_to_roman(num)
    sym=['M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I']
    val=[1000,900,500,400,100,90,50,40,10,9,5,4,1]
    ans=""
    i=0
    while num!=0
        num,ans=num-val[i],ans+sym[i] while num>=val[i]
        i+=1
    end
    ans
end