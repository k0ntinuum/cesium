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

function spinrows(k,p)
    for j in 1:size(k)[begin]
            k[j,:] = circshift(k[j,:],k[j,j]+p+1)
    end
end

function spincols(k,p)
    for j in 1:size(k)[begin]
        k[:,j] = circshift(k[:,j],k[j,j]+p+1)
    end 
end

function spin(q,n)
    k = copy(q)
    for i in 1:n
        isodd(tr(k)+ i) ? spincols(k) : spinrows(k)
    end
    k
end