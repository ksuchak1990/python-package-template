.PHONY: venv lint test build clean

venv:
	python -m venv .venv

lint:
	pre-commit run --all-files

test:
	pytest

build:
	python -m pip install -U build
	python -m build

clean:
	rm -rf dist build .pytest_cache *.egg-info

# Get the current directory name (the package name)
PACKAGE_NAME = $(notdir $(CURDIR))

create_dirs:
	mkdir -p src/$(PACKAGE_NAME)
	touch src/$(PACKAGE_NAME)/__init__.py

update_pyproject_toml:
	sed "s/{PACKAGE_NAME}/$(PACKAGE_NAME)/" pyproject.toml > pyproject.toml.tmp && \
	mv pyproject.toml.tmp pyproject.toml
