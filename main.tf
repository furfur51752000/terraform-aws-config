provider "aws" {
  profile = "default"
  region = "ap-northeast-1"
  assume_role {
    role_arn = "arn:aws:iam::214310575279:role/Role-Administrator"
    session_name = "terraform"
  }
}
