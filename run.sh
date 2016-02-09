#!/bin/bash

# problem-set-1 answers

data='../data-sets'

answer1=$(gzcat ../$data/states.tab.gz | grep -v '#' | sort -k6n | head -1 | cut -f 1 | tr -d '"')
echo "answer-1: $answer1"

answer2=$(grep '>' ../$data/sample.fa | wc -l | tr -d " ")
echo "answer-2: $answer2"

answer3=$(gzcat ../data-sets/cpg.bed.gz | cut -f4 | sort -k4 | uniq | wc -l | tr -d ' ')
echo "answer-3: $answer3"

answer4=$(grep '^+$' ../data-sets/SP1.fq | wc -l | tr -d ' ')
echo "answer-4: $answer4"

answer5=$(grep 'bloody' ../data-sets/hamlet.txt | wc -w | tr -d ' ')
echo "answer-5: $answer5"

answer6=$(grep -v '^>' ../data-sets/sample.fa | head -n1 | tr -d '\n\r' | wc -m | tr -d ' ')
echo "answer-6: $answer6"

answer7=$(gzcat ../data-sets/genes.hg19.bed.gz | awk '{print $4, $3 - $2}' |  sort -k2nr | head -1 | cut -f1 -d ' ')
echo "answer-7: $answer7"

answer8=$(gzcat ../data-sets/genes.hg19.bed.gz | cut -f1 | sort | uniq | wc -l | tr -d ' ')
echo "answer-8: $answer8"

answer9=$(gzcat ../data-sets/peaks.chr22.bed.gz | grep 'CTCF$' | wc -l | tr -d ' ')
echo "answer-9: $answer9"

answer10=$(cat ../data-sets/lamina.bed | awk '{print $1, $3 - $2}' | sort -k2nr | cut -f1 -d ' ' | head -1)
echo "answer-10: $answer10"


