DATE := $(shell date +%m-%d-%y)
BASENAME := test-$(DATE)
EXT := .ts

ts:
	@i=0; \
	FILENAME="$(BASENAME)$(EXT)"; \
	while [ -e "$$FILENAME" ]; do \
		i=$$((i+1)); \
		FILENAME="$(BASENAME)($$i)$(EXT)"; \
	done; \
	echo "Creating file: $$FILENAME"; \
	nvim "$$FILENAME"

setup:
	npm install -g tsx
