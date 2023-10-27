
function encode(p,q)
    k = copy(q)
    printkey(k)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        x = tr(k)%b
        c[i] = (p[i]+x)%b
        if isodd(x)
            spincols(k)
        else
            spinrows(k)
        end
    end
    #printkey(k)
    c
end

function decode(p,q)
    k = copy(q)
    #printkey(k)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        x = tr(k)%b
        c[i] = (p[i]- x + b )%b
        if isodd(x)
            spincols(k)
        else
            spinrows(k)
        end
    end
    c
end