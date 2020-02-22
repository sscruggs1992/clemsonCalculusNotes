set table "impFunc2.pgf-plot.table"; set format "%.5f"
set format "%.7e";; set contour base; set cntrparam levels discrete 0.00015; unset surface; set view map; set isosamples 2000; set samples 2000; splot (x**2+y**2-2*x)**2-2*(x**2+y**2); 
