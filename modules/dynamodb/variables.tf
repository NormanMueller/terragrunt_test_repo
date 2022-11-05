variable "db_name" {
    description = "name of db"
    type = string
}

variable "hash_key" {
    description = "name of key"
    type = string
}

variable "range_key" {
    description = "name of range key"
    type = string
    default = null
}
