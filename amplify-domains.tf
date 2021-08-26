resource "aws_amplify_domain_association" "example" {
  app_id      = aws_amplify_app.testofamplify.id
  domain_name = "naoyahieda.com"

  sub_domain {
    branch_name = aws_amplify_branch.master.branch_name
    prefix      = "amp-tf-production"
  }

  sub_domain {
    branch_name = aws_amplify_branch.stating.branch_name
    prefix      = "amp-tf-staging"
  }
}