FROM hashicorp/terraform:1.2.3

RUN mkdir -p $HOME/.terraform.d/plugin_cache

COPY .terraformrc $HOME/.terraformrc
COPY provider.tf /workdir/provider.tf

RUN terraform init
