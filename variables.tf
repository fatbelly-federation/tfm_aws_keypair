# what region are we operating in
variable "region" {}

# list of key_pair_names
variable "key_name_list" {
    type = "list"
}

# map of key_names to public_keys
variable "public_key_map" {
    type = "map"
}

