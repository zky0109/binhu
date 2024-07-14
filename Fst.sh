vcftools \
--gzvcf BH.vcf.gz \
--weir-fst-pop ./Binhu.list \
--weir-fst-pop ./Jianghexing.list \
--fst-window-size 50000 \
--fst-window-step 20000 \
--out Fst-win \
--max-missing 0.9 \
--maf 0.05

