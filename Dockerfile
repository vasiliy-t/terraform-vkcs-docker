FROM hashicorp/terraform:1.2.3

RUN mkdir -p /root/.terraform.d/plugin_cache \
    && mkdir -p /root/.terraform.d/providers_mirror

COPY provider.tf provider.tf

RUN terraform init
RUN terraform providers mirror /root/.terraform.d/providers_mirror

COPY .terraformrc /root/.terraformrc
