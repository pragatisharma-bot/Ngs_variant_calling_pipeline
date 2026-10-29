#!/usr/bin/env bash

set -euo pipefail

# NGS pipeline: variant calling with GATK HaplotypeCaller

PROJECT_DIR="${HOME}/ngs_project_1"

mkdir -p "${PROJECT_DIR}/variants"

gatk HaplotypeCaller \
    -R "${PROJECT_DIR}/reference/genome.fa" \
    -I "${PROJECT_DIR}/alignments/sample_marked.bam" \
    -O "${PROJECT_DIR}/variants/sample_raw.vcf"
