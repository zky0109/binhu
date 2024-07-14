for i in 
do
	   plink --bfile ./"$i" --homozyg-window-snp 50 --homozyg-snp 100 --homozyg-kb 500 --homozyg-density 50 --homozyg-gap 100 --homozyg-window-missing 2 --homozyg-window-threshold 0.05 --homozyg-window-het 1 -out "$i"_ROH
done
   

