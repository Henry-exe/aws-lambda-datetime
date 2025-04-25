provider "aws" {
    region = "us-east-1"
}
resource "aws_lambda_funciton" "horario_lambda" { 
  filename         = "lambda_function_payload.zip"
  function_name    = "horarioLambda"
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.9"
  source_code_hash = filebase64sha256("lambda_function_payload.zip")
}