variable "team_members" {
  type    = list(string)
  default = ["Member1 ","Member2 ","Member3 ","Member4 "]
}

resource "null_resource" "hello" {
  for_each = toset(var.team_members)
  provisioner "local-exec" {
    command = "echo Hello ${each.key}"
  }
}
