FROM hashicorp/terraform:1.2.3

COPY .terraformrc $HOME/.terraformrc
COPY provider.tf /provider.tf

RUN terraform init
