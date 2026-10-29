#!/usr/bin/env bash

set -euo pipefail

# NGS pipeline: variant annotation with SnpEff

PROJECT_DIR="${HOME}/ngs_project_1"
DATABASE="GRCh38.105"

mkdir -p "${PROJECT_DIR}/annotation"

snpEff \
    -Xmx8g \
    "${DATABASE}" \
    "${PROJECT_DIR}/variants/sample_raw.vcf" \
    > "${PROJECT_DIR}/annotation/sample_annotated.vcf"
