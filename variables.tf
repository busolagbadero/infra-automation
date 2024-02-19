variable "AWS_ACCESS_KEY_ID" {
  default = ""
}
variable "AWS_SECRET_ACCESS_KEY" {
  default = ""
}
variable "AWS_REGION" {
  default = "us-east-1"
}
variable "env_prefix" {
  default = "dev"
}
variable "runner_registration_token" {
  default = ""
  # will not be displayed in tf output
  sensitive = true
}