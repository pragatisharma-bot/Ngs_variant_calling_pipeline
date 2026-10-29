docs/reference_preparation.md
# Reference Genome Preparation

## Purpose

The reference genome provides the coordinate system used to align sequencing reads and identify genetic variants.

## Reference Assembly

This project uses the human GRCh38 reference assembly.

The reference FASTA and its associated annotation must be compatible with the selected variant-calling workflow.

## Preparation Steps

### 1. Obtain the reference FASTA

Download the appropriate reference genome FASTA from an authoritative source, such as NCBI.

### 2. Prepare the BWA index

Run this command in Ubuntu:

    bwa index genome.fa

### 3. Create the SAMtools FASTA index

Run this command in Ubuntu:

    samtools faidx genome.fa

### 4. Create the sequence dictionary

Run this command in Ubuntu:

    picard CreateSequenceDictionary R=genome.fa O=genome.dict

## Important Notes

- Use the same reference assembly throughout the analysis.
- Confirm that chromosome names match between the reference and annotation resources.
- Keep large reference genome files and indexes outside the public GitHub repository.
- Record the source and version of the reference genome.
