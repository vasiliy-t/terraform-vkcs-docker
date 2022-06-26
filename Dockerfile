FROM hashicorp/terraform:1.2.3

RUN mkdir -p $HOME/.terraform.d/plugin_cache

COPY .terraformrc /root/.terraformrc
COPY provider.tf provider.tf

RUN terraform init
