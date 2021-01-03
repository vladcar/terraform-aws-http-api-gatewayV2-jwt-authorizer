variable "api_gateway_id" {
  type = string
}

variable "authorizer_name" {
  type = string
}

variable "jwt_token_source" {
  type    = string
  default = "$request.header.Authorization"
}

variable "jwt_issuer_endpoint" {
  type = string
}

variable "jwt_audience" {
  type        = list(string)
  description = "E.g Cognito app client id"
}
