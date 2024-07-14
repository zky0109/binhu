do 
 echo $i
 echo "#!/bin/bash" > $i.xpehh.sh
 echo "vcftools --gzvcf ./chr$i.imp.vcf.gz --keep ./Binhu.list --recode --out BH.chr$i " >> $i.xpehh.sh
 echo "vcftools --gzvcf ./chr$i.imp.vcf.gz --keep ./Jianghexing.list --recode --out Jianghexing.chr$i " >> $i.xpehh.sh
 echo "perl ./add.id.vcf.pl BH.chr$i.recode.vcf BH.chr$i.vcf" >> $i.xpehh.sh
 echo "perl ./add.id.vcf.pl Jianghexing.chr$i.recode.vcf Jianghexing.chr$i.vcf" >> $i.xpehh.sh
 echo "awk '{print \$1,\$3,\$2,\$2}' OFS=\"\t\" BH.chr$i.vcf > chr$i.map" >> $i.xpehh.sh
 echo "./selscan --xpehh --vcf BH.chr$i.vcf --vcf-ref Jianghexing.chr$i.vcf --map chr$i.map --cutoff 0.01 --out Binhu_Jianghexing.$i.xpehh --threads 6" >> $i.xpehh.sh
 chmod 755 $i.xpehh.sh
 done

