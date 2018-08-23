# useful outputs
# output(track in remote state) the name of the imported key
# ref: https://www.terraform.io/docs/providers/aws/r/key_pair.html

output "key_name" {
    value = ["${aws_key_pair.imported_key.*.key_name}"]
}

