# Prime-counting
##Function for prime-counting with a good approximation
![Alt text](https://raw.githubusercontent.com/lucky-sideburn/Prime-counting/master/kappa.png)
###Instructions:
####From Linux command line:
    git clone https://github.com/lucky-sideburn/Prime-counting.git
    ruby px.rb
    Example => x: 83 ; p(x): 23 ; k(x): 23.66003706554203 ; px(x)-k(x) = -0.6600370655420313 ; x/log(x) : 18.783207489664797 ; px(x) - x/log(x) 4.216792510335203
####Create GnuPlot Chart:
    ruby px.rb >> primes.csv 
    sed -i '' 's/\./,/g' primes.csv 
    gnuplot> set datafile separator ";"
    gnuplot> set terminal canvas
    gnuplot> set output "foo.html"
    gnuplot> plot 'primes.csv' using 1:2 title 'P(x)' with lines, '' using 1:3 title 'k(x)' with lines , '' using 1:4 title 'x/log(x)' with lines
####Open foo.html from you browser to see this chart:
![Alt text](https://raw.githubusercontent.com/lucky-sideburn/Prime-counting/master/gnuplot.png "Gnuplot chart")
