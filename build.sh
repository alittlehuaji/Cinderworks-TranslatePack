#!/bin/bash

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$PROJECT_DIR" || exit 1

OUTPUT_FILE="Cinderworks_TranslatePack.zip"

rm -f "$OUTPUT_FILE"

zip -r "$OUTPUT_FILE" README.md pack.png pack.mcmeta LICENSE assets

echo "构建完成: $OUTPUT_FILE"