# Contributing to the ML Leadership Compendium

Thank you for your interest in contributing to the ML Leadership Compendium! This guide outlines the process for making contributions, the standards we follow, and how we review and integrate new content.

## Our Vision

The ML Leadership Compendium aims to be a comprehensive resource for data science and machine learning leaders. We believe that leadership in this space requires a unique blend of technical excellence, people skills, product thinking, and organizational strategy. By documenting our collective wisdom, we hope to accelerate the development of effective ML leaders.

## Ways to Contribute

There are several ways you can contribute to this repository:

1. **Adding new content**: Share your expertise by writing new articles, guides, or case studies
2. **Improving existing content**: Enhance, update, or clarify existing documents
3. **Review and feedback**: Provide thoughtful reviews on pull requests
4. **Structure and organization**: Suggest improvements to how content is organized
5. **Tooling and automation**: Enhance the documentation infrastructure

## Content Guidelines

### Voice and Style

Write in a clear, approachable voice that balances authority with humility. We aim for content that is:

- **Practical and evidence-based**: Ground recommendations in real-world experience
- **Thoughtful and nuanced**: Acknowledge complexity and trade-offs
- **Inclusive and respectful**: Consider diverse perspectives and experiences
- **Concise but thorough**: Provide comprehensive coverage without unnecessary verbosity

### Document Structure

Each document should generally follow this structure:

1. **Introduction**: What the document covers and why it matters
2. **Main content**: Organized with clear headings and subheadings
3. **Practical application**: How to apply the concepts discussed
4. **Challenges and considerations**: Common pitfalls or nuances to be aware of
5. **Summary**: Key takeaways
6. **Related resources**: Links to related documents or external resources

### Markdown Standards

We use GitHub-flavored Markdown with the following conventions:

- Use `#` for the document title (only one per document)
- Use `##` for major sections
- Use `###` for subsections
- Use `####` for minor subsections
- Use ordered lists (`1.`) for sequential steps or prioritized items
- Use unordered lists (`-`) for collections of related items
- Use backticks for `code`, commands, or technical terms
- Use code blocks with language specification for longer code samples
- Use blockquotes for important notes or callouts
- Include alt text for all images

## Contribution Process

### Getting Started

1. **Set up your environment**: Follow the instructions in the README to set up your local development environment using our toolchain
2. **Explore the repository**: Familiarize yourself with the existing content and structure
3. **Find an opportunity**: Identify where you can add the most value

### Making Contributions

1. **Create a branch**: Create a new branch for your contribution
   ```bash
   git checkout -b add-topic-x
   ```

2. **Write your content**: Create or modify the relevant Markdown files
   - Place files in the appropriate section directory
   - Follow the content guidelines above
   - Preview your changes using `hatch run docs:serve`

3. **Commit your changes**: Use clear, descriptive commit messages
   ```bash
   git commit -m "Add guide on building cross-functional ML partnerships"
   ```

4. **Open a pull request**: Submit your changes for review
   - Provide a clear description of what you've added or changed
   - Link to any relevant issues
   - Highlight any areas where you'd like specific feedback

### Review Process

All contributions go through a review process to ensure quality and consistency:

1. **Initial review**: A maintainer will provide an initial review of your contribution
2. **Collaborative improvement**: Work with reviewers to address any feedback
3. **Final approval**: Once approved, a maintainer will merge your contribution

## Content Organization

Our content is organized according to the Diátaxis framework, which separates documentation into four distinct types:

1. **Tutorials**: Learning-oriented guides that help newcomers get started
2. **How-to Guides**: Problem-oriented guides for specific tasks
3. **Explanation**: Understanding-oriented discussions about concepts
4. **Reference**: Information-oriented technical descriptions

When contributing, consider where your content best fits within this framework and place it accordingly.

## Technical Guidelines

### Development Environment

We use a standardized development environment based on:

- GitHub Codespaces for consistent development
- Hatch for project and environment management
- uv for dependency management
- MkDocs with Material theme for documentation
- Ruff for code linting and formatting

See the [Development Environment](docs/technical-excellence/development-environments/index.md) section for more details.

### Documentation Preview

To preview the documentation locally:

```bash
# Create and activate the docs environment
hatch env create

# Serve the documentation
hatch run docs:serve
```

This will start a local server at http://127.0.0.1:8000 that updates as you make changes.

## Licensing and Attribution

By contributing to this repository, you agree that your contributions will be licensed under the same license as the repository (see LICENSE file). If you include content from other sources, ensure that:

1. The content is compatible with our license
2. You provide proper attribution to the original source
3. You note any modifications you've made

## Community Guidelines

We aim to maintain a respectful, inclusive community of contributors. Please:

- Be respectful and constructive in comments and reviews
- Focus feedback on content, not individuals
- Acknowledge and appreciate others' contributions
- Be open to different perspectives and experiences

## Getting Help

If you need assistance with your contribution or have questions about the process:

1. Check existing documentation first
2. Open an issue with the "question" label
3. Reach out to the repository maintainers

Thank you for helping to build the ML Leadership Compendium. Your contributions help advance the practice of ML leadership and support the development of current and future leaders in this space.