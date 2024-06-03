resource "aws_s3_bucket" "bucket-terraform" {
  bucket = "terraform-lifecycle-dennis" #alterado para terraform-dennis-lufecycle

lifecycle {
  create_before_destroy = true #só vai deletar a s3 antiga, quando a nova for criada. 
  ignore_changes = [ 
    tags  #ignora o parametro de que podera ser alterado
   ]
}

tags = {
  test = "vscode" #consegue fazer a alteração em tags 
}
}