output "self" {
  value       = aws_iam_openid_connect_provider.default
  description = "Returns a 'aws_iam_openid_connect_provider' resource itself."
}

output "arn" {
  value       = aws_iam_openid_connect_provider.default.arn
  description = "OpenID provider ARN."
}
