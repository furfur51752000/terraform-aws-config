module "config" {
  source  = "trussworks/config/aws"
  version = "1.0.1"
  config_logs_bucket = "104isgd-config-test"

  # insert the 1 required variable here
}
