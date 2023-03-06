resource "aws_lambda_layer_version" "layers" {
  count         = length(var.layer_names)
  layer_name    = var.layer_names[count.index]
  s3_bucket     = var.layer_s3_buckets[count.index]
  s3_key        = var.layer_s3_keys[count.index]
  compatible_runtimes = ["python3.8"]
}
