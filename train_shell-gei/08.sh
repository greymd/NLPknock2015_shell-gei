cipher () {
[ "$1" != "dec" ] && sed 's/./ &/g' | perl -anE 'for(@F){if($_ =~ /[a-zA-Z]/){print 219-ord($_)}else{print $_} print " "} say ""' || perl -anE 'for(@F){if($_ =~ /\d{3}/){print chr(219-$_)}else{print $_}}  say ""'
}

# encryption
echo "abcあいうXYZ\nMichelジャクソン" | cipher

# decryption
echo "122 121 120 あ い う 131 130 129\n142 114 120 115 118 111 ジ ャ ク ソ ン" | cipher dec

