.DEFAULT_GOAL := default

# default goal
default: pdf clean

## Create PDF
pdf:
	xelatex ${NAME}-cv
	biber ${NAME}-cv
	xelatex ${NAME}-cv

## Cleanup build files
clean:
	rm -rf ${NAME}-cv.log ${NAME}-cv.out ${NAME}-cv.aux ${NAME}-cv.blg ${NAME}-cv.bbl ${NAME}-cv.bcf ${NAME}-cv.run.xml

## Show this help screen
help:
	@printf "Available targets\n\n"
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "%-30s %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)
