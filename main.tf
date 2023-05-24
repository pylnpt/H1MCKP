module "files" {
  source  = "./modules/files"
  content = "Lorem Ipsum is simply dummy text of the printing and typesetting industry." 
  name    = "FirstTask"
}

module "read" {
  source        = "./modules/read"
  input_data  = module.files.content
}