provider "aws" {
region = "us-east-1"
}

provider "archive" {}

data "archive_file" "zip" {
  type        = "zip"
  source_file = "lambda_code.py"
  output_path = "lambda_code.zip"
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda2"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}


resource "aws_lambda_function" "lambda" {
  function_name = "hello_lambda2"

  filename         = "${data.archive_file.zip.output_path}"
  source_code_hash = "${data.archive_file.zip.output_base64sha256}"

  role    = "${aws_iam_role.iam_for_lambda.arn}"
  handler = "lambda_code.lambda_handler"
  runtime = "python3.9"
}