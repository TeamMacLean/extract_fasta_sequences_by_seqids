## README

A simple bash script to extract FASTA sequences using sequence ids.

## How to use

bash extract_fasta_sequeces_by_seqids.sh FASTAFile file_with_list_of_seqids

## Example of usages

if you have a list of sequence ids in a text file use the command like this
```
bash extract_fasta_sequeces_by_seqids.sh multiline.fasta seqids.txt
```

Here, multiline.fasta and seqids.txt are the files. 

If you want to extract one sequence id, use the command like this

```
bash extract_fasta_sequeces_by_seqids.sh multiline.fasta seq3
```
Here, seq3 is a sequence identifier. There should be no file called seq3.

