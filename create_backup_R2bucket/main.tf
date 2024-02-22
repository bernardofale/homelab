variable "token" {
  type = string
}

terraform {
required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}

provider "cloudflare" {
  api_token = var.token
}

resource "cloudflare_r2_bucket" "cloudflare-bucket" {
  account_id = "cbadf12b82e9ba6e179b32b281a89fb0"
  name       = "backup"
  location   = "WEUR"
}
