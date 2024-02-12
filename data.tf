data "external" "thumbprint" {
  program = [
    "/bin/sh",
    "${path.module}/scripts/oidc-thumbprint.sh",
    replace(var.url, "https://", ""),
  ]
}
