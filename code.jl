
function encode(p,q)
    k = copy(q)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        x = tr(k)%b
        c[i] = (p[i] + x)%b
        # isodd((x + p[i])%b) ? spincols(k) : spinrows(k)
        isodd((x + p[i])%b) ? spincols(k,p[i]) : spinrows(k,p[i])
    end
    c
end

function decode(p,q)
    k = copy(q)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        x = tr(k)%b
        c[i] = (p[i]- x + b )%b
        # isodd((x + c[i])%b) ? spincols(k) : spinrows(k)
        isodd((x + c[i])%b) ? spincols(k,c[i]) : spinrows(k,c[i])
    end
    c
end