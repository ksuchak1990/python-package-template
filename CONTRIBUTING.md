# Contributing

## Setup

1. Create a virtual environment and install dependencies:

```bash
python -m venv .venv && . .venv/bin/activate  # Windows: .venv\Scripts\activate
python -m pip install -U pip
pip install -r requirements.txt || true
pip install -r requirements-dev.txt || true
pip install -r requirements-test.txt || true
pip install -e .
```

2. Install and enable pre-commit:

```bash
python -m pip install -U pre-commit
pre-commit install --install-hooks
pre-commit run --all-files
```

## Running tests

Tests can be run through the following command:

```bash
pytest
```

## Branch / PR guidelines

- Create feature branches from `main`.
- Ensure CI passes (linting and testing).
- Keep PRs small and focused; include a short description of changes and
  rationale.
- Versioning and releases: tag `v.X.Y.Z` (if enabled) after merge.
