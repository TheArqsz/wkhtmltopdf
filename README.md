# Dockerized [wkhtmltopdf](https://wkhtmltopdf.org/)

[![Build, Test & Push](https://github.com/TheArqsz/wkhtmltopdf/actions/workflows/build-test-push.yml/badge.svg?branch=main)](https://github.com/TheArqsz/wkhtmltopdf/actions/workflows/build-test-push.yml)

Repository for [thearqsz/wkhtmltopdf](https://hub.docker.com/r/thearqsz/wkhtmltopdf) Docker image.

## Quick start

1. Get your HTML file or remote URL

2. Run:

``` bash
$ docker run --rm -v $(pwd):/pdf thearqsz/wkhtmltopdf yourhtml.html yourpdf.pdf
```

To check all possible parameters just run:
``` bash
$ docker run --rm -v $(pwd):/pdf thearqsz/wkhtmltopdf --help
```

## Licensing

The project is freely available under the [GNU Lesser General Public License v3.0](LICENSE.md).

All rights for wkhtmltopdf CLI tool go to [wkhtmltopdf/wkhtmltopdf](https://github.com/wkhtmltopdf/wkhtmltopdf).