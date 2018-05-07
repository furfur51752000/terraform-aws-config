module "config" {
  source             = "github.com/furfur51752000/terraform-aws-config"
  config_logs_bucket = "104isgd-config-test"

  # insert the 1 required variable here
}
