# NGS Input Data Preparation

## Objective

Obtain paired-end FASTQ sequencing reads for the NGS variant-calling workflow.

## Example Dataset

SRA accession: SRR062634

The original workflow used paired-end reads downloaded from the European Nucleotide Archive (ENA).

## Input Files

- sample_R1.fastq.gz: forward reads
- sample_R2.fastq.gz: reverse reads

These files must correspond to the same sequencing sample.

## Download Instructions

The original analysis used the following ENA files:

Forward reads:
https://ftp.sra.ebi.ac.uk/vol1/fastq/SRR062/SRR062634/SRR062634_1.fastq.gz

Reverse reads:
https://ftp.sra.ebi.ac.uk/vol1/fastq/SRR062/SRR062634/SRR062634_2.fastq.gz

The downloaded files were renamed to sample_R1.fastq.gz and sample_R2.fastq.gz.

## File Location

Place the FASTQ files in the raw_data directory of the local NGS project.

## Important Notes

- Raw FASTQ files are not included in this repository.
- Confirm that both files download successfully.
- Check file integrity before analysis.
- Follow dataset usage conditions and applicable data protection requirements.
