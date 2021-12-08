FROM formio/formio-enterprise:7.1.9

COPY rootfs /

USER root

RUN cat /patch.js /src/formio.js > /tmp/formio.js && \
    mv /tmp/formio.js /src

USER formiouser