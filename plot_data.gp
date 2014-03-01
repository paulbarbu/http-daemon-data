set terminal pdf

set output name.".pdf"

set key above

set grid y
set xlabel "Request"
set ylabel "Response time (ms)"

plot name."/daemon.dat" using 9 smooth sbezier with lines title "http-daemon", \
 name."/apache.dat" using 9 smooth sbezier with lines title "apache", \
 name."/lighttpd.dat" using 9 smooth sbezier with lines title "lighttpd"
