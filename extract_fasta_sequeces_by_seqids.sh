#!/bin/bash

fasta=$1
seqids=$2

if [ -e $seqids ]; then 
	cat $fasta | awk 'BEGIN{seqid=""; seq=""}{if($0 ~ /^>/){if(seq != ""){print seq"\n"$0; seq=""} else {print $0}} else {seq=seq""$0;}} END{print seq}' | grep -A 1 -w -f $seqids | egrep -v -e "-{2,4}"
else
	cat $fasta | awk 'BEGIN{seqid=""; seq=""}{if($0 ~ /^>/){if(seq != ""){print seq"\n"$0; seq=""} else {print $0}} else {seq=seq""$0;}} END{print seq}' | grep -A 1 -w $seqids | egrep -v -e "-{2,4}"
fi
