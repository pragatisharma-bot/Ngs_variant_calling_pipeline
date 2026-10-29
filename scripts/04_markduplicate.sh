#!/usr/bin/env bash

set -euo pipefail

# NGS pipeline: mark duplicate reads using Picard

PROJECT_DIR="${HOME}/ngs_project_1"

mkdir -p "${PROJECT_DIR}/logs"

picard MarkDuplicates \
    I="${PROJECT_DIR}/alignments/sample_sorted.bam" \
    O="${PROJECT_DIR}/alignments/sample_marked.bam" \
    M="${PROJECT_DIR}/logs/sample_metrics.txt" \
    CREATE_INDEX=true \
    REMOVE_DUPLICATES=false
