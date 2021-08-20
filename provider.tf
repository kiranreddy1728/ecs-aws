provider "aws" {
    region = "us-east-1"
    access_key = "XXXXXXXXXX"
	secret_key = "XXXXXXXXXXXX"
    /*assume_role {
        role_arn     = "arn:aws:iam::XXXXXXX:role/terraform"
        session_name = "SESSION_NAME"
        external_id  = "EXTERNAL_ID"
  }*/
}
