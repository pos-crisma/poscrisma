SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c

# Encontrar o executável Python
PYTHON := $(shell command -v python3 || command -v python)

.PHONY: bricks

bricks:
	@if [ -z "$(PYTHON)" ]; then \
		echo "Python não encontrado. Por favor, instale Python 3."; \
		exit 1; \
	fi
	$(PYTHON) scripts/generate_mason_bricks.py
