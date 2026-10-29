#!/usr/bin/env bash

set -euo pipefail

# NGS pipeline: quality control with FastQC

PROJECT_DIR="${HOME}/ngs_project_1"

mkdir -p "${PROJECT_DIR}/qc_reports"

fastqc \
    "${PROJECT_DIR}/raw_data/sample_R1.fastq.gz" \
    "${PROJECT_DIR}/raw_data/sample_R2.fastq.gz" \
    --outdir "${PROJECT_DIR}/qc_reports"
