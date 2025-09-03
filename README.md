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

## Licence

This project is licensed under the MIT License
