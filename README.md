# Dockerized [wkhtmltopdf](https://wkhtmltopdf.org/)

![Build & Test](https://github.com/TheArqsz/wkhtmltopdf/workflows/Build,%20Test%20&%20Push/badge.svg?branch=master)

## Quick start

1. Get your HTML file or remote URL

2. Run:

``` bash
$ docker run --rm -v $(pwd):/pdf thearqsz/wkhtmltopdf yourhtml.html yourpdf.pdf
```

## Licensing

The project is freely available under the [GNU Lesser General Public License v3.0](LICENSE.md).

All rights for wkhtmltopdf CLI tool go to [wkhtmltopdf/wkhtmltopdf](https://github.com/wkhtmltopdf/wkhtmltopdf).