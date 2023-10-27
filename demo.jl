

function demo()
    k = key(n)
    p = text(t)
    c  = encrypt(p,k,r)
    d  = decrypt(c,k,r)
    @printf "p        "
    printvec(p)
    @printf "c        "
    printvec(c)
    # @printf "d        "
    # printvec(d)
    # @printf "p == d   "
    # printvec(p .== d)
    # @printf "p != c   "
    # printvec(p .!= c)
    if p != d @printf "ERROR" end
end

function codedemo()
    k = key(n)
    p = text(t)
    c  = encode(p,k)
    d  = decode(c,k)
    @printf "p        "
    printvec(p)
    @printf "c        "
    printvec(c)
    # @printf "d        "
    # printvec(d)
    if p != d @printf "ERROR" end
end