function encrypt(p, q, r)
    for i in 1:r
        k = spin(q,i)
        p = encode(p,k)
        p = reverse(p)
    end
    p
end

function decrypt(p, q, r)
    for i in 1:r
        k = spin(q,r + 1 - i)
        p = reverse(p)
        p = decode(p,k)
    end
    p
end