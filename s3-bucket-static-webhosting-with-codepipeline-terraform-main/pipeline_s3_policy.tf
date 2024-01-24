resource "aws_s3_bucket_policy" "pipeline_bucket_policy" {
  bucket = aws_s3_bucket.pipeline_bucket.id

  policy = <<EOF
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "DenyUnEncryptedObjectUploads",
			"Effect": "Deny",
			"Principal": "*",
			"Action": "s3:PutObject",
			"Resource": [
			  "${aws_s3_bucket.pipeline_bucket.arn}",
              "${aws_s3_bucket.pipeline_bucket.arn}/*"
      ],
			"Condition": {
				"StringNotEquals": {
					"s3:x-amz-server-side-encryption": "aws:kms"
				}
			}
		},
		{
			"Sid": "DenyInsecureConnections",
			"Effect": "Deny",
			"Principal": "*",
			"Action": "s3:*",
			"Resource": [
			  "${aws_s3_bucket.pipeline_bucket.arn}",
              "${aws_s3_bucket.pipeline_bucket.arn}/*"
      ],
			"Condition": {
				"Bool": {
					"aws:SecureTransport": "false"
				}
			}
		}
	]
}
EOF
}
