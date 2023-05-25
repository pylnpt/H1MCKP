module "files" {
  source  = "./modules/files"
  content = "Lorem Ipsum is simply dummy text of the printing and typesetting industry." 
  name    = "FirstTask"
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