#!/usr/bin/env bash

# Example configuration for the NGS pipeline.
# Adjust these paths for your own computer.

SAMPLE_NAME="sample"

PROJECT_DIR="${HOME}/ngs_project_1"

RAW_DIR="${PROJECT_DIR}/raw_data"
TRIMMED_DIR="${PROJECT_DIR}/trimmed"
REFERENCE_DIR="${PROJECT_DIR}/reference"
ALIGNMENT_DIR="${PROJECT_DIR}/alignments"
VARIANT_DIR="${PROJECT_DIR}/variants"
ANNOTATION_DIR="${PROJECT_DIR}/annotation"
QC_DIR="${PROJECT_DIR}/qc_reports"
LOG_DIR="${PROJECT_DIR}/logs"

READ1="${RAW_DIR}/sample_R1.fastq.gz"
READ2="${RAW_DIR}/sample_R2.fastq.gz"

REFERENCE="${REFERENCE_DIR}/genome.fa"

THREADS=4

# Example SnpEff database.
# Confirm the correct database before running annotation.
SNPEFF_DATABASE="GRCh38.105"
example NGS pipeline configuration
