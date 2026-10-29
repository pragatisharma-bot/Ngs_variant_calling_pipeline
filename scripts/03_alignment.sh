#!/usr/bin/env bash

set -euo pipefail

# NGS pipeline: BWA alignment and SAMtools sorting

PROJECT_DIR="${HOME}/ngs_project_1"

mkdir -p "${PROJECT_DIR}/alignments"

bwa mem -t 4 \
    -R "@RG\tID:sample1\tSM:sample1\tPL:ILLUMINA\tLB:lib1\tPU:unit1" \
    "${PROJECT_DIR}/reference/genome.fa" \
    "${PROJECT_DIR}/trimmed/sample_R1_paired.fq.gz" \
    "${PROJECT_DIR}/trimmed/sample_R2_paired.fq.gz" |
    samtools sort -@ 4 \
        -o "${PROJECT_DIR}/alignments/sample_sorted.bam" -

samtools index "${PROJECT_DIR}/alignments/sample_sorted.bam"
