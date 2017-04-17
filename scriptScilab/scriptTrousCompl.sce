function y=T(n)
    S = 0
    y = 0
    while (S<n)
        tirage = grand(1,1,'uin',1,n)
        S = S + tirage
        y = y + 1
    end
endfunction
