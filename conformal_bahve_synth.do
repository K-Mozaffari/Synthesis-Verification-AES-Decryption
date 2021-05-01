reset
read library -Both -Replace  -sensitive  -Statetable  -Liberty /nfs/home/k/k_mozaff/conformal/class.lib -nooptimize   
read design ./aes_pkg.vhdl aes_dec.vhdl  key_expansion.vhdl -VHDL -Golden            -continuousassignment Bidirectional   -nokeep_unreach    -norangeconstraint
read design ./aes_dec_synth.vhdl -VHDL -Revised            -continuousassignment Bidirectional   -nokeep_unreach    -norangeconstraint

set system mode lec
report design similarity
add compared points -all
compare
diagnose -summary
