

function demo()
    k = key(n)
    printkey(k)
    p = text(t)
    c  = encrypt(p,k,r)
    d  = decrypt(c,k,r)
    @printf "p        "
    printvec(p)
    @printf "c        "
    printvec(c)
    if p != d @printf "ERROR" end
end


