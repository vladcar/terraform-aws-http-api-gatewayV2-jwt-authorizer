
resource "aws_apigatewayv2_authorizer" "jwt_authorizer" {
  api_id           = var.api_gateway_id
  name             = var.authorizer_name
  identity_sources = [var.jwt_token_source]
  authorizer_type  = "JWT"

  jwt_configuration {
    audience = var.jwt_audience
    issuer   = var.jwt_issuer_endpoint
  }
}