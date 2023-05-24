variable "num_of_files" {
  description = "This is the number of files that are going to be created"
  type        = number
  default     = 5
}
variable "content" {
  description = "This is the content of the files that are going to be created"
  type        = string
}
variable "name" {
  description = "This is the name of the files that are going to be created"
  type        = string
}
