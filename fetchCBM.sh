IFS=$'\n'; for file in $( find -name "*outmol"); do echo -n -e $file '\t' && grep -A 2 "DFT" $file | tail -1; done > CBM.txt

# -A 0 对应 DFT energy gap
# -A 1 对应 valence band edge
# -A 2 对应 conduction band edge
# -A n 代表后面关键词之后的n行文本
