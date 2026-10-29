
NGS Variant Calling Pipeline
An educational bioinformatics project demonstrating an alignment-based next-generation sequencing (NGS) workflow for quality control, read trimming, alignment, variant calling, and functional annotation.
Overview
This project documents a paired-end sequencing analysis workflow using commonly used bioinformatics tools. The pipeline processes FASTQ reads, aligns them to a reference genome, identifies candidate genetic variants, and annotates their potential functional consequences.
Workflow
Quality control â€” FastQC
Read trimming â€” Trimmomatic
Read alignment â€” BWA-MEM
Sorting and indexing â€” SAMtools
Duplicate marking â€” Picard MarkDuplicates
Variant calling â€” GATK HaplotypeCaller
Functional annotation â€” SnpEff
Tools Used
Tool Purpose
FastQC Sequencing quality assessment
Trimmomatic Adapter and quality trimming
BWA-MEM Read alignment
SAMtools BAM sorting and indexing
Picard Duplicate marking
GATK HaplotypeCaller Variant calling
SnpEff Functional variant annotation

Repository Structure
scripts/ — Individual pipeline scripts
config/ — Example configuration
docs/ — Workflow, reference preparation, data preparation, and software-version documentation
Input Data
The documented example dataset is paired-end sequencing data associated with SRA accession SRR062634.
Raw FASTQ files and reference genome files are not included in this repository. See docs/data_preparation.md for input download instructions.
Expected Outputs
The workflow is designed to produce:
Quality-control reports
Trimmed FASTQ reads
Sorted and indexed BAM files
VCF files containing candidate variants
Annotated VCF files
Actual outputs depend on the input data, reference genome, software versions, and configuration.
Reproducibility
The repository includes individual scripts and supporting documentation. Software versions, reference assembly details, and annotation database compatibility still need to be confirmed.

The complete scripted workflow has not yet been independently validated end to end.
See docs/workflow.md and docs/reference_preparation.md for further details.
Disclaimer
This is an educational bioinformatics project. Computational variant calls and annotations require appropriate quality assessment and expert interpretation; they are not, by themselves, clinical diagnoses.
