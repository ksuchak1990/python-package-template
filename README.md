# python-package-template

[![Lint](https://github.com/ksuchak1990/python-package-template/actions/workflows/lint.yml/badge.svg?branch=main)](https://github.com/ksuchak1990/python-package-test/actions/workflows/lint.yml)
[![Tests](https://github.com/ksuchak1990/python-package-template/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/ksuchak1990/python-package-template/actions/workflows/test.yml)

> A minimal, modern Python package structure with CI/CD, linting, testing, and packaging pre-configured.

## Features

- Modern build with `pyproject.toml` and `setuptools-scm` versioning.
- `ruff` for linting and formatting.
- `pytest` for tests.
- Pre-commit hooks for consistent local development.
- GitHub Actions for automated linting and testing.
- Optional extras for development (`.[dev]`) and testing (`.[test]`).
- MIT license for permissive reuse.

## Quick start

1. **Use the template:** Click "Use this template" on GitHub, or clone it
   directly.

```bash
git clone https://github.com/ksuchak1990/python-package-template.git myproject
cd myproject
```

2. **Create a virtual environment:**

```bash
python -m venv .venv
source .venv/bin/activate  # Linux/macOS
.venv\Scripts\activate     # Windows
```

3. **Install dependencies:**

  a) For development:

```bash
pip install -e .[dev]
```

  b_ For tests only:

```bash
pip install -e .[test]
```

4. **Install [pre-commit](https://pre-commit.com/) hooks:**

```bash
pre-commit install
```

## Project layout

```
src/
  your_package/
    __init__.py
tests/
  __init__.py
  test_example.py
```

## Versioning and releases

This template uses `setuptools-scm`.
Package versions are derived from Git tags.

- Tags must follow `vMAJOR.MINOR.PATH` (e.g. `v0.3.1).
- Commits between tags receive dev versions like `0.3.2.devN`.
- Pre-releases may use tags such as `v1.0.0rc1`.

Semantic versioning is expected.

### Release checklist

1. Ensure `main` is green (linting, testing).
2. Update docs/README if needed.
3. Create and push a tag:

```bash
git tag v0.1.0
git push origin v0.1.0
```

4. Let GitHub Actions build and publish the artifacts.
5. Verify the release on PyPI (or TestPyPI).

### Building locally

We can build the package locally using:

```bash
pythom -m build
```

which produces build files in `dist/`.
These local build files are not required for the CI publishing workflow.

## Licence

This project is licensed under the MIT License
