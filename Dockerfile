FROM ubuntu:22.04 as builder

WORKDIR /tmp

ENV DEBIAN_FRONTEND noninteractive

COPY resources/wkhtmltox_0.12.6-1.buster_amd64.deb /tmp/wkhtml.deb

COPY resources/libjpeg62-turbo_1.5.1-2_amd64.deb /tmp/libjpeg62.deb

RUN apt update && apt install --no-install-recommends -y \
        ca-certificates build-essential \
        fontconfig libfreetype6 libpng16-16 \
        libx11-6 libxcb1 libxext6 \
        libxrender1 xfonts-75dpi xfonts-base libssl1.1 

RUN dpkg -i /tmp/libjpeg62.deb

RUN apt install -y 

RUN dpkg -i /tmp/wkhtml.deb

RUN apt-get purge -y build-essential && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -f /tmp/libjpeg62.deb /tmp/wkhtml.deb && \
    rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND interactive

FROM ubuntu:22.04 as runner

COPY --from=builder /etc/fonts /etc/fonts
COPY --from=builder /etc/X11 /etc/X11
COPY --from=builder /usr/lib /usr/lib
COPY --from=builder /usr/share /usr/share

RUN ldconfig

COPY --from=builder /usr/local/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf

WORKDIR /pdf

RUN chmod a+rwx /pdf

VOLUME /pdf

USER 1001

ENTRYPOINT [ "wkhtmltopdf" ]

CMD [ "-H" ]