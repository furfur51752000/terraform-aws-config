{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:PutObject*"
            ],
            "Resource": [
                "arn:aws:s3:::"'${var.config_logs_bucket}'-'${base64sha256('${var.sha256}')}'"/${config_logs_prefix}/AWSLogs/${account_id}/*"
            ],
            "Condition": {
                "StringLike": {
                    "s3:x-amz-acl": "bucket-owner-full-control"
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetBucketAcl"
            ],
            "Resource": "arn:aws:s3:::"'${var.config_logs_bucket}'-'${base64sha256('${var.sha256}')}'""
        }
    ]
}
