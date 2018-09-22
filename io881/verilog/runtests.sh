for module in regs fifo; do
    echo -n $module ...
    rerun=false
    if [ ! -f ${module}_tests.vpi ]; then
	echo " no previous test run found"
	rerun=true;
    fi
    for dep in $module.v ${module}_tests.v tests/${module}/*.v tests/${module}/*.inc; do
	#echo " checking dependency on $dep"
	if [ $dep -nt ${module}_tests.vpi ]; then
	    echo " $dep has changed"
	    rerun=true;
	fi
    done

    if $rerun; then
	iverilog -g2009 -o ${module}_tests.vpi ${module}_tests.v tests/$module/*.v ${module}.v && \
	    vvp -n ${module}_tests.vpi
    else
	echo " skipped"
    fi
done
