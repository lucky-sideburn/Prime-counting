def isprime? x
  x.times.each do |n|
    if n > 1 and n < x
      if x % n == 0
        return false
      end
    end
  end
  return true
end

def howmanyprimes? x
  primes = Array.new
  i = 2
  while i <= x
    if x > 1 and isprime? i
      primes.push(x)
    end
   i = i+ 1
end
  return primes.size
end

def kappa(x)
   i = 3
   sum_of_log = 0
   while (i <= x + 1)
     sum_of_log = sum_of_log + ((i).to_f / Math::log(i))
     i = i + 1
   end
   return ((sum_of_log.to_f) * 2.121212121212121212121212121212121212121212121212121212 ) / x
end

1000.times.each do |x|
  px = howmanyprimes?(x)
  kx = kappa(x)
  gauss_approximation = x / Math::log(x)
  puts "x: #{x} ; p(x): #{px} ; k(x): #{kx} ; px(x)-k(x) = #{px - kx} ; x/log(x) : #{gauss_approximation} ; px(x) - x/log(x) #{px - gauss_approximation}"

  ##Use with GnuPlot
  #puts "#{x};#{px};#{kx};#{gauss_approximation}"
end



