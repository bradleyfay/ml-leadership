#!/bin/bash
set -e

echo "Setting up ML Leadership Compendium project structure..."

# Check if project structure already exists
if [ -f "mkdocs.yml" ] && [ -d "docs" ]; then
    echo "Project structure appears to already exist."
    read -p "Do you want to reinitialize the project structure? This may overwrite existing files. (y/N): " confirm
    if [[ ! $confirm =~ ^[Yy]$ ]]; then
        echo "Project initialization cancelled."
        exit 0
    fi
fi

# Create MkDocs configuration
echo "Setting up MkDocs..."
cat > mkdocs.yml << EOL
site_name: ML Leadership Compendium
site_description: A comprehensive guide for data science and ML engineering leadership
theme:
  name: material
  features:
    - navigation.instant
    - navigation.tracking
    - navigation.expand
    - navigation.indexes
    - content.code.annotate
    - content.tabs.link
nav:
  - Home: index.md
  - Technical Excellence:
    - technical-excellence/index.md
    - Development Environments:
      - technical-excellence/development-environments/index.md
      - Toolchain Philosophy: technical-excellence/development-environments/toolchain-philosophy.md
  - People Leadership: people-leadership/index.md
  - Product Leadership: product-leadership/index.md
  - Organizational Strategy: organizational-strategy/index.md
  - Resources: resources/index.md
markdown_extensions:
  - pymdownx.highlight
  - pymdownx.superfences
  - pymdownx.inlinehilite
  - pymdownx.tabbed
  - admonition
  - footnotes
  - toc:
      permalink: true
EOL

# Create documentation directory structure
mkdir -p docs/technical-excellence/development-environments
mkdir -p docs/people-leadership
mkdir -p docs/product-leadership
mkdir -p docs/organizational-strategy
mkdir -p docs/resources

# Create initial index files
echo "# ML Leadership Compendium" > docs/index.md
echo "# Technical Excellence" > docs/technical-excellence/index.md
echo "# Development Environments" > docs/technical-excellence/development-environments/index.md
echo "# People Leadership" > docs/people-leadership/index.md
echo "# Product Leadership" > docs/product-leadership/index.md
echo "# Organizational Strategy" > docs/organizational-strategy/index.md
echo "# Resources" > docs/resources/index.md

# Copy over the toolchain philosophy document
echo "# Toolchain Philosophy and Principles" > docs/technical-excellence/development-environments/toolchain-philosophy.md

echo "Project structure setup complete!"