#!/usr/bin/env bash

set -euo pipefail

# NGS pipeline: paired-end read trimming with Trimmomatic

PROJECT_DIR="${HOME}/ngs_project_1"

mkdir -p "${PROJECT_DIR}/trimmed"

trimmomatic PE -threads 4 \
    "${PROJECT_DIR}/raw_data/sample_R1.fastq.gz" \
    "${PROJECT_DIR}/raw_data/sample_R2.fastq.gz" \
    "${PROJECT_DIR}/trimmed/sample_R1_paired.fq.gz" \
    "${PROJECT_DIR}/trimmed/sample_R1_unpaired.fq.gz" \
    "${PROJECT_DIR}/trimmed/sample_R2_paired.fq.gz" \
    "${PROJECT_DIR}/trimmed/sample_R2_unpaired.fq.gz" \
    "ILLUMINACLIP:${CONDA_PREFIX}/share/trimmomatic/adapters/TruSeq3-PE.fa:2:30:10" \
    HEADCROP:5 \
    SLIDINGWINDOW:4:20 \
    MINLEN:50
