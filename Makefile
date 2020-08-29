define help-text

Environment targets:
    help         - prin this text
endef

.PHONY: help
help:
	$(q)true$(info $(help-text))

.PHONY: setup
setup:
	@if [ ! -f cv/$${NAME}-cv.tex ]; then cp cv/template-cv.tex cv/$${NAME}-cv.tex; fi

.PHONY: pdf
pdf:
	cd cv && make NAME=${NAME} pdf

.PHONY: clean
clean:
	cd cv && make NAME=${NAME} clean
