plink -bfile ./BH.snp --indep-pairwise 50 5 0.2  --out BH.snp

##### Construct NJtree
plink -bfile ./BH.snp.prune  --distance-matrix --out BH.prune

##### PCA
./smartpca -p bos_eigensoft_smartpca.par

##### Admxture
for i in {1..7}
do
	./admixture --cv ./BH.snp.prune.bed $i | tee log${i}.out
	./admixture ./BH.snp.prune.bed $i
done



