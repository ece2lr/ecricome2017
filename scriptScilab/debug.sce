N = 1000
exec("scriptTrousCompl.sce",-1)
function y=freqT(n)
    y = zeros(1,n)
    for i = 1:N
        k = T(n)
        y(k) = y(k) + 1
    end
    y = y / N
endfunction

function y=loitheoY(n)
    y = zeros(1,n)
    for k = 1:n
        y(k) = (k-1) / prod(1:k)
    end
endfunction

clf()
//n = input('n = ?')

arguments = [5 10 20 50 100 1000]

for k = 1:6
    subplot(3,2,k)
    n = arguments(k)
    plot2d(loitheoY(6), style=-2)
    x = freqT(n)
    bar(x(1:5))
    e = gce()
    barres = e.children
    barres.polyline_style = 3 // simples traits pour barres
    barres.thickness = 4 
end
