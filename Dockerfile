FROM hashicorp/terraform:1.2.3

RUN mkdir -p /root/.terraform.d/plugin_cache

COPY .terraformrc /root/.terraformrc
COPY provider.tf provider.tf

RUN terraform init
RUN terraform providers mirror /root/.terraform.d/providers_mirror
