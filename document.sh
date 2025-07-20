#!/bin/sh

# Absolute path to the docs folder outside the current root
DOCS_DIR="../pioniaApiDocs"

# Check if the folder exists
if [ ! -d "$DOCS_DIR" ]; then
    echo "📁 '$DOCS_DIR' folder not found outside the current root. Creating..."
    mkdir "$DOCS_DIR"
    echo "✅ Created '$DOCS_DIR'."
else
    echo "📁 'docs' folder already exists."
fi

# Run composer ducument, outputting to the docs folder
echo "🚀 Generating documentation using phpDocumentor..."
composer document

# copy the results to the DOCS_DIR

# drop the docs folder

echo "✅ Documentation generation complete. Check the '$DOCS_DIR' folder."
