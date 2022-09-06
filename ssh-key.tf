resource "tls_private_key" "shh-key"{
    algorithm = "RSA"
    rsa_bits = 4096
}

output "tls_private_key" {
    value = tls_private_key.shh-key.private_key_pem
    sensitive = true
}