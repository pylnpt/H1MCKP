output "content" {
  value = local_file.files[0].content_md5
}
output "custom" {
  value= "custom content value"
}