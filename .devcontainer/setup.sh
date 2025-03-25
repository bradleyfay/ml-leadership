#!/bin/bash
set -e

echo "Setting up the development environment..."

# Install uv (fast Python package installer)
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.cargo/bin:$PATH"

# Install core development tools
uv tool install hatch
uv tool install ruff
uv tool install mypy
uv tool install pre-commit

# Add tool directory to PATH
export PATH="$HOME/.uv/bin:$PATH"
echo 'export PATH="$HOME/.cargo/bin:$HOME/.uv/bin:$PATH"' >> ~/.bashrc

# # Set up project with Hatch
# echo "Initializing project with Hatch..."
# hatch new . --init || echo "Hatch project already initialized"

# Configure pre-commit
echo "Setting up pre-commit..."
cat > .pre-commit-config.yaml << EOL
repos:
-   repo: https://github.com/astral-sh/ruff-pre-commit
    rev: v0.1.3
    hooks:
    -   id: ruff
        args: [--fix]
    -   id: ruff-format
EOL

pre-commit install

echo "Development environment setup complete!"
echo "To initialize project structure, run: bash .devcontainer/init-project.sh"