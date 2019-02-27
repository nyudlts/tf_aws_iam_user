//
// Module: aws_iam_user
//

# user ouputs
output "iam_user_arn" {
  value = "${aws_iam_user.this.arn}"
}

output "iam_user_name" {
  value = "${aws_iam_user.this.name}"
}

output "iam_user_unique_id" {
  value = "${aws_iam_user.this.unique_id}"
}

# key outputs

output "iam_access_key_id" {
  description = "The access key ID"
  value       = "${aws_iam_access_key.this.id}"
}

output "iam_access_key_user" {
  description = "The IAM user associated with this access key"
  value       = "${aws_iam_access_key.this.user}"
}

output "iam_access_key_fingerprint" {
  description = "The fingerprint of the PGP key used to encrypt the secret"
  value       = "${aws_iam_access_key.this.key_fingerprint}"
}

#output "iam_access_key_secret" {
#  description = "The secret access key. Note that this will be written to the state file. Please supply a pgp_key instead, which will prevent the secret from being stored in plain text"
#  value       = "${aws_iam_access_key.this.secret}"
#}

output "iam_access_key_encrypted_secret" {
  description = "The encrypted secret, base64 encoded. ~> NOTE: The encrypted secret may be decrypted using the command line, for example: terraform output encrypted_secret | base64 --decode | keybase pgp decrypt."
  value       = "${aws_iam_access_key.this.encrypted_secret}"
}

output "iam_access_key_ses_smtp_password" {
  description = "The encrypted secret, base64 encoded. ~> NOTE: The encrypted secret may be decrypted using the command line, for example: terraform output encrypted_secret | base64 --decode | keybase pgp decrypt."
  value       = "${aws_iam_access_key.this.ses_smtp_password}"
}

output "iam_access_key_status" {
  description = "Active or Inactive. Keys are initially active, but can be made inactive by other means."
  value       = "${aws_iam_access_key.this.status}"
}
