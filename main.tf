module "lambda_layers" {
  source = "./lambda-layers"
  layer_names = [    "layer1",    "layer2" ]
  layer_s3_bucket = "bskhatrig-testing"
  layer_s3_keys = [    "layer1.zip",    "layer2.zip" ]
}
