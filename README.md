# NGS Variant Calling Pipeline

## Overview

This project documents a Next-Generation Sequencing (NGS)
workflow for quality control, read trimming, reference
alignment, variant calling and functional annotation.

## Workflow

1. Quality control using FastQC
2. Read trimming using Trimmomatic
3. Read alignment using BWA-MEM
4. Sorting and indexing using SAMtools
5. Duplicate marking using Picard
6. Variant calling using GATK HaplotypeCaller
7. Functional annotation using SnpEff

## Tools

- FastQC
- Trimmomatic
- BWA
- SAMtools
- Picard
- GATK
- SnpEff

## Repository Structure

- scripts/ : Individual pipeline scripts
- docs/ : Workflow documentation
- config/ : Example configuration files

## Input Data

The workflow uses paired-end FASTQ sequencing reads
and a compatible reference genome.

Raw sequencing reads and reference genome files are
not included in this repository

## Output

The pipeline can generate:

- Quality-control reports
- Trimmed sequencing reads
- Aligned BAM files
- Variant call format (VCF) files
- Annotated variant files

## Reproducibility

Software versions, reference genome assembly,
database versions and command parameters should be
documented to support reproducible analysis.

## Disclaimer

This repository is an educational bioinformatics project.
Variant annotations are computational predictions and
are not, by themselves, clinical diagnoses.
