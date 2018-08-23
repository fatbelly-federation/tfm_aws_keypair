# ref: https://www.terraform.io/docs/providers/aws/r/key_pair.html

resource "aws_key_pair" "imported_key" {
    count       = "${length(var.key_name_list)}"
    key_name    = "${element(var.key_name_list, count.index)}"
    public_key  = "${lookup(var.public_key_map, element(var.key_name_list, count.index))}"
}

