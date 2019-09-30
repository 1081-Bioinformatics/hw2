# hw2

## Description

* Write R script to perform pairwise alignment.
* Creating your own R script, hw2_yourStudentID.R , ie. hw2_105753026.R, to perform pairwise alignment.
* In this program, library Biostrings is only used to parse fasta file. Even pairwise alighment function is supported by Biostrings, please complete the dynamic programming part by yourself.

## File

* hw2_ref.R: You can start from this reference code, and try to write your own comment in English
* pam100.txt
* pam250.txt
* test.fasta
* result.fasta

## Parameters

* input: test.fasta
* score: pam250.txt
* aln: global|local
* gap_open
* gap_extend
* output: result.fasta

## Command

Executing your code with the following command.

```R
Rscript hw2_studentID.R --input test.fasta --score pam250.txt --aln global --gap_open -10 --gap_extend -2 --output result.fasta
```

## Evaluation

* 80: Your code is runnable
* 85: Global alignment
* 90: Matrix
* 95: Local alignment
* 100: Two gap-penalty scheme (gap open, gap extend)

### Penalty

* High code similarity to others: YOUR SCORE = 0

