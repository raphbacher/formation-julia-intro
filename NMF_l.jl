# # Example
# $M = W\times H$


function NMF_l(M,R,β,μ,n)
    if (β < 0) || μ <0
        print("Parameters μ and β must be positive")
        return 1
    end
    # Initialize
    W = rand(size(M)[1],R)
    H = rand(R,size(M)[2])
    W = W./sum(W,1) #normalize columns
    X = W*H
    s = size(W)[1]
    for i = 1:n
        H = H .* ((W'*(M .* X.^(β-2))) ./ ( W'*X.^(β-1) .+ μ) )
        X = W*H
        W = W .* ((( X.^(β-2).*M)*H' + W.*(ones(s,s)*(W.*(X.^(β-1)*H')))) ./ ((X.^(β-2)*H' + W.* (ones(s,s)*(W .*((X.^(β-2) .* M )*H'))))))
        W = W./sum(W,1)
        X = W*H
    print(norm(M-W*H))
    print("\n")
    end
    return W,H
end

function NMF_l(M,R,β,n)
    if (β < 0)
        print("Parameters μ and β must be positive")
        return 1
    end
    # Initialize
    W = rand(size(M)[1],R)
    H = rand(R,size(M)[2])
    W = W./sum(W,1) #normalize columns
    X = W*H
    s = size(W)[1]
    for i = 1:n
        H = H .* ((W'*(M .* X.^(β-2))) ./ ( W'*X.^(β-1) .+ μ) )
        X = W*H
        W = W .* ((( X.^(β-2).*M)*H' + W.*(ones(s,s)*(W.*(X.^(β-1)*H')))) ./ ((X.^(β-2)*H' + W.* (ones(s,s)*(W .*((X.^(β-2) .* M )*H'))))))
        W = W./sum(W,1)
        X = W*H
    print(norm(M-W*H))
    print("\n")
    end
    return W,H
end
