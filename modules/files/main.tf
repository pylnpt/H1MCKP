resource "local_file" "files" {
  count = var.num_of_files
  content = var.content
  filename = "${path.module}/CreatedFiles/${var.name}_${count.index}"
}