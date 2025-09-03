# Get the current directory name (the package name)
PACKAGE_NAME = $(notdir $(CURDIR))

all: create_dirs

create_dirs:
	mkdir -p src/$(PACKAGE_NAME)
	touch src/$(PACKAGE_NAME)/__init__.py

update_pyproject_toml:
	sed "s/{PACKAGE_NAME}/$(PACKAGE_NAME)/" pyproject.toml > pyproject.toml.tmp && \
	mv pyproject.toml.tmp pyproject.toml
