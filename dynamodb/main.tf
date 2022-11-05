module "dynamodb" {
    source = "../modules/dynamodb"
    db_name = "norms_db"
    has_key = "vorname"
}