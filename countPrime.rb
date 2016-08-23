# @param {Integer} n
# @return {Integer}
def getPrime(n)
    prime=Array.new(n,true)
    prime[0]=prime[1]=false
    for i in (2..Math.sqrt(n))
        if prime[i]
            for j in (i*i..n).step(i)
                prime[j]=false
            end
        end
    end
    return prime.count(true)
end
            
def count_primes(n)
    return getPrime(n)
end