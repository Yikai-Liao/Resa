#!/bin/bash


MAMBA_ENV="resa"
echo "START TIME: $(date)"
echo "PYTHON ENV: $(which python)"

source "./scripts/set/set_vars.sh"
# export HF_HUB_ENABLE_HF_TRANSFER=1
export HF_ENDPOINT=https://hf-mirror.com
PY_SCRIPT="./scripts/set/run_download_model_sae.py"

echo ""
echo "Running script: ${PY_SCRIPT}"
echo ""

uv run python "${PY_SCRIPT}"

echo "END TIME: $(date)"
echo "DONE"
