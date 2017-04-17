function y=freqT(n)
    y = zeros(1,n)
    for i = 1:100000
        k = T(n)
        y(k) = y(k) + 1
    end
    y = y / 100000
endfunction

function y=loitheoY(n)
    y = zeros(1,n)
    for k = 1:n
        y(k) = (k-1) / prod(1:k)
    end
endfunction

clf()
n = input('n = ?')
plot2d(loitheoY(6), style=-2)
x = freqT(n)
bar(x(1:5))
