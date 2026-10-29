# NGS Variant Calling Workflow

## Objective

To identify and annotate genetic variants from paired-end next-generation sequencing data using an alignment-based variant-calling workflow.

## Pipeline Overview

Raw FASTQ Reads
       |
       v
FastQC - Quality Assessment
       |
       v
Trimmomatic - Read Trimming
       |
       v
BWA-MEM - Reference Alignment
       |
       v
SAMtools - BAM Sorting and Indexing
       |
       v
Picard - Duplicate Marking
       |
       v
GATK HaplotypeCaller - Variant Calling
       |
       v
SnpEff - Functional Annotation
       |
       v
Annotated VCF

## Step 1: Quality Control

Tool: FastQC

Input:
- sample_R1.fastq.gz
- sample_R2.fastq.gz

Purpose:
Assess sequencing quality, GC content, sequence duplication, adapter content and other quality metrics.

Script:
scripts/01_fastqc.sh

## Step 2: Read Trimming

Tool: Trimmomatic

Purpose:
Remove adapter contamination and trim low-quality read regions.

Parameters:
- HEADCROP:5
- SLIDINGWINDOW:4:20
- MINLEN:50

Script:
scripts/02_Trimmomatic.sh

## Step 3: Alignment

Tools: BWA-MEM and SAMtools

Purpose:
Align trimmed reads to the GRCh38 reference genome, sort alignments and index the BAM file.

Output:
alignments/sample_sorted.bam

Script:
scripts/03_alignment.sh

## Step 4: Duplicate Marking

Tool: Picard MarkDuplicates

Purpose:
Identify and flag duplicate alignments without removing them.

Output:
alignments/sample_marked.bam

Script:
scripts/04_mark_duplicates.sh

## Step 5: Variant Calling

Tool: GATK HaplotypeCaller

Purpose:
Identify candidate genetic variants from aligned sequencing reads.

Output:
variants/sample_raw.vcf

Script:
scripts/05_variant_calling.sh

## Step 6: Variant Annotation

Tool: SnpEff

Purpose:
Predict the functional consequences of called variants.

Output:
annotation/sample_annotated.vcf

Script:
scripts/06_annotation.sh

Note:
The SnpEff annotation database must be compatible with the reference genome and chromosome naming used in the VCF.

## Reference Genome

Human GRCh38, with exact release and source documented separately.

See:
docs/reference_preparation.md

## Reproducibility Notes

- Use compatible software versions.
- Prepare and index the reference genome before alignment.
- Activate the required Conda environment before running scripts.
- Verify input paths and output directories.
- Verify that the selected SnpEff database is compatible with the reference assembly.
- Raw FASTQ files, large BAM files and reference genomes are not stored in this repository.

## Project Status

The scripts document the original individual analysis commands. The complete scripted workflow has not yet been independently validated for end-to-end execution.
