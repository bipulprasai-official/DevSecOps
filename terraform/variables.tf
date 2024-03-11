variable "ports" {
  type = list(number)
}
variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ec2_count" {
  type = string
  default = "3"
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}