// 本体
resource "aws_amplify_app" "testofamplify" {
  name       = "amplify-tf-react"
  repository = "https://github.com/naoyahieda/amplify_react_ci_cd"
  access_token = var.github_access_token

  # The default build_spec added by the Amplify Console for React.
  build_spec = <<-EOT
    version: 0.1
    frontend:
      phases:
        preBuild:
          commands:
            - yarn install
        build:
          commands:
            - yarn run build
      artifacts:
        baseDirectory: build
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
  EOT

  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  environment_variables = {
    ENV = "envitonmentvariables"
  }
}