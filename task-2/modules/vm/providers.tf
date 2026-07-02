#-----------------------------------------------------------------------------
# Provider requirements
#
# The provider itself (and the backend) are configured at the root/env level.
# A module should only declare which providers it needs.
#-----------------------------------------------------------------------------
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
