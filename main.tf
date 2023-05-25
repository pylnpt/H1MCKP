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

module "write" {
  source = "./modules/write"

  answer1 = var.answers[0]
  answer2 = var.answers[1]
  answer3 = var.answers[2]
  answer4 = var.answers[3]
  answer5 = var.answers[4]
}

locals {
  answers = module.write.all_answers
}

output "all_answers" {
  value = local.answers
}