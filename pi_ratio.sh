###target group pi

vcftools --gzvcf ./Binhu.snp.vcf.gz --keep ./Binhu.list --window-pi 50000 --window-pi-step 20000 --maf 0.05 --max-missing 0.90 --out Binhu.pi

###reference group pi
vcftools --gzvcf ./Jianghexing.snp.vcf.gz --keep ./Jianghexing.list --window-pi 50000 --window-pi-step 20000 --maf 0.05 --max-missing 0.90 --out Jianghexing.pi 

###compute target group pi ratio
python3 ./CalPiRatio.py -1 ./Binhu.pi.windowed.pi -2 ./Jianghexing.pi.windowed.pi -o target_pi_ratio