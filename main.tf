resource "aws_iam_user" "this" {
  name                 = "${var.name}"
  path                 = "${var.path}"
  force_destroy        = "${var.force_destroy}"
  permissions_boundary = "${var.permissions_boundary}"
}

resource "aws_iam_access_key" "this" {
  user    = "${aws_iam_user.this.name}"
  pgp_key = "${var.pgp_key}"
}
