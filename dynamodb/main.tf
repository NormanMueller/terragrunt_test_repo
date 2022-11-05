module "dynamodb" {
    source = "../modules/dynamodb"
    db_name = "norms_db"
    hash_key = "vorname"
}