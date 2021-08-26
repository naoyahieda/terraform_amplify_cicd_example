// mainブランチ
resource "aws_amplify_branch" "master" {
  app_id      = aws_amplify_app.testofamplify.id
  branch_name = "main"

  framework = "React"
  stage     = "PRODUCTION"
  enable_auto_build = true

  environment_variables = {
  // ここにproduction用の環境変数
    REACT_APP_NODE_ENV = "production(改)"
  }
}

// statingブランチ
resource "aws_amplify_branch" "stating" {
  app_id      = aws_amplify_app.testofamplify.id
  branch_name = "stating"

  framework = "React"
  stage     = "DEVELOPMENT"
  enable_auto_build = true

  environment_variables = {
  // ここにstaging用の環境変数
    REACT_APP_NODE_ENV = "staging(改)"
  }
}