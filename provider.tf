terraform {
  required_providers {
    vkcs = {
      source  = "vk-cs/vkcs"
      version = "0.1.6"
    }
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.47.0"
    }
  }
}
