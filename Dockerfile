FROM alpine

ENV HELM_URL=https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3

ENV OC_URL=https://github.com/okd-project/okd/releases/download/4.13.0-0.okd-2023-06-24-145750/openshift-client-linux-4.13.0-0.okd-2023-06-24-145750.tar.gz

RUN apk update \
    && apk add --no-cache gcompat openssl bash curl gettext \
    && rm -rf /var/cache/apk/*

CMD ["bash"]

RUN curl -fsSL -o get_helm.sh ${HELM_URL} \
    && chmod +x get_helm.sh \
    && ./get_helm.sh \
    && rm get_helm.sh

RUN curl -L ${OC_URL} | tar xvz -C /usr/local/bin/ \
    && chmod +x /usr/local/bin/oc

CMD ["/bin/sh", "-c", "bash"]