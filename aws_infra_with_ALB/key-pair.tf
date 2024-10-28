# Create a Key Pair
resource "aws_key_pair" "my_key_pair_tf" {
  key_name   = "my-key-pair-tf"
  public_key = file("~/.ssh/id_rsa.pub") # Path to your public key file
}