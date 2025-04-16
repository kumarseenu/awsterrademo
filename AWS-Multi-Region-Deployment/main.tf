
module "sns_topics" {
  source = "./SNS"
  aws_sns_topic_name = "sns-topic-us-east"
}

module "sns_eu_west" {
  source     = "./SNS"
  aws_sns_topic_name = "sns-topic-eu-west"

  providers = {
    aws = aws.eu
  }
}

module "sns_us_west" {
  source     = "./SNS"
  aws_sns_topic_name = "sns-topic-us-west"

  providers = {
    aws = aws.west
  }
}