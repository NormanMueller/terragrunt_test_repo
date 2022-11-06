include "root" {
  path = find_in_parent_folders()
}

terraform {
  source ="${path_relative_to_include()}/../../modules/dynamodb"
}
inputs =  {
    db_name = "norms_db4no"
    hash_key = "vorname"
}