resource "aws_route53_resolver_config" "vpc" {
  resource_id              = var.vpc_id
  autodefined_reverse_flag = "DISABLE"
}

resource "aws_cloudwatch_log_group" "vpc" {
  name_prefix = var.name_prefix

  retention_in_days = var.retention_in_days

}

resource "aws_route53_resolver_query_log_config" "vpc" {
  name            = var.name
  destination_arn = aws_cloudwatch_log_group.vpc.arn
}

resource "aws_route53_resolver_query_log_config_association" "vpc" {
  resolver_query_log_config_id = aws_route53_resolver_query_log_config.vpc.id
  resource_id                  = var.vpc_id
}