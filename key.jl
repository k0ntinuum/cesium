function key(n) rand(0:b-1, n, n) end

function text(n)  rand(0:b-1, n) end

function spinrows(k)
    for j in 1:size(k)[begin]
            k[j,:] = circshift(k[j,:],k[j,j]+1)
    end
end

function spincols(k)
    for j in 1:size(k)[begin]
        k[:,j] = circshift(k[:,j],k[j,j]+1)
    end 
end

function spin(q,n)
    k = copy(q)
    for i in 1:n
        if isodd(i)
            spincols(k)
        else
            spinrows(k)
        end
    end
    k
end