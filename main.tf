resource "aws_iam_openid_connect_provider" "default" {
  url = var.url

  thumbprint_list = distinct(concat([data.external.thumbprint.result.thumbprint], var.extra_thumbprints))
  client_id_list  = var.client_ids

  tags = var.tags
}
