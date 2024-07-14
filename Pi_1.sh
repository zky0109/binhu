	python3 ./plot_Manhattan.py --infile $i.snp10.log2.head.pi --loc-col BIN_START --val-col Pi_value --chr-col CHROM --cutoff $i.json --xlabel CHROM --ylabel PI --ylim 2.5 5.5 --axlabelsize 20 --markersize 12 --ticklabelsize 20 --figsize 20  7 --outfile $i

	bedtools intersect -a PI.cutoff_value_1 -b ./gene.pos -wa -wb -r > BH_PI_bedtools_.anno
	
