resource "local_file" "pet" {
  filename = var.filename
  content  = "My fav pet is ${random_pet.pet.id}"
}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "random_pet" "pet" {
  prefix    = "Mr"
  separator = "."
  length    = "1"
}


