#-----------------------------------------------------------------------------
# Provider requirements
#
# The provider itself is configured at the root/env level.
# A module must declare which providers it needs so that `yandex` resolves to
# the yandex-cloud namespace rather than the default hashicorp/ one.
#-----------------------------------------------------------------------------
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
