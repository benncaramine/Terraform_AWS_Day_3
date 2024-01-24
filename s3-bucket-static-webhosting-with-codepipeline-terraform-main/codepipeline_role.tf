################################### CODEPIPELINE ROLE ###############################################
resource "aws_iam_role" "codepipeline_role1" {
  name = "${var.projectname}-codepipeline-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "codepipeline_policy1" {
  name = "${var.projectname}-codepipeline-policy"
  role = aws_iam_role.codepipeline_role1.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect":"Allow",
      "Action": [
        "s3:*"
      ],
      "Resource": [
"${aws_s3_bucket.pipeline_bucket.arn}",
"${aws_s3_bucket.pipeline_bucket.arn}/*",
"${aws_s3_bucket.app_bucket_amine.arn}",
"${aws_s3_bucket.app_bucket_amine.arn}/*"
]
    },
    {
      "Effect": "Allow",
      "Action": [
        "codestar-connections:UseConnection"
      ],
      "Resource": "${data.aws_codestarconnections_connection.github.id}"
    },
    {
      "Effect": "Allow",
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}
