include "root" {
  path = find_in_parent_folders()
}

terraform {
  source ="${path_relative_to_include()}/../"
}
inputs =  {
    db_name = "norms_db"
    hash_key = "vorname"
}