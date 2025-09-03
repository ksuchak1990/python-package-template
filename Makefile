# Get the current directory name (the package name)
PACKAGE_NAME = $(notdir $(CURDIR))

all: create_dirs

create_dirs:
	mkdir -p src/$(PACKAGE_NAME)
