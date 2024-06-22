resource "local_file" "pet" {
  filename = var.filename
  content  = "My fav pet is ${random_pet.pet.id}"
}

resource "random_string" "random" {
  length           = 15
  special          = true
  override_special = "/@£$"
}

resource "random_pet" "pet" {
  prefix    = "Mr"
  separator = "."
  length    = "1"
}

#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
