VERSION := $(or $(VERSION),$(VERSION),latest)
BUILD_ARGS := $(BUILD_ARGS)

build:
	docker build $(BUILD_ARGS) -t thearqsz/wkhtmltopdf:$(VERSION) .

test:
	chmod +x ./tests/testpdf.sh && VERSION=$(VERSION) ./tests/testpdf.sh
