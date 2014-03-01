all:
	gnuplot -e "name='small'" plot_data.gp;
	gnuplot -e "name='big'" plot_data.gp;
	gnuplot -e "name='cgi'" plot_data.gp;
	gnuplot -e "name='get_root'" plot_data.gp;

clean:
	rm -rf *.pdf
