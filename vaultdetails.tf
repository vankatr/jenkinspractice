provider "vault" {
  address = "http://localhost:32768/"
  token   = "hvs.Vp0srpeSfRQplD9b0wKKnjcy"
}

data "vault_generic_secret" "getdetails" {
  path = "kv/kv1"
}

locals {
  raw_secret_output = jsonencode(data.vault_generic_secret.getdetails.data)
  secret_output = replace(replace(replace(replace(local.raw_secret_output, "\"", ""), "\\", ""), "{", ""), "}", "")
  split_parts   = split(":", local.secret_output)
  sliced_part1  = trimspace(element(local.split_parts, 0))
  sliced_part2  = trimspace(element(local.split_parts, 1))
}

output "display_secret_output" {
  value = nonsensitive(local.secret_output)

}
output "display_secret_output1" {
  value = nonsensitive(local.sliced_part1)

}
output "display_secret_output2" {
  value = nonsensitive(local.sliced_part2)

}
