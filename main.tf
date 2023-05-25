module "files" {
  source  = "./modules/files"
  content = "Lorem Ipsum is simply dummy text of the printing and typesetting industry." 
  name    = "FirstTask"
}

module "read" {
  source        = "./modules/read"
  input_data  = module.files.content
}


module "data" {
  source = "./modules/data"
  generated_file_path = var.path
  depends_on = [ module.read ]
}