Generate private key in pem format with ecryption 

1. command : openssl genpkey -algorithm RSA -out private.pem
2. command : openssl pkcs8 -topk8 -in private.pem -out encrypted_private_key.pem -v2 aes-256-cbc -passout pass:your_password
note : Replace your_password with the passphrase you want to use for encryption.

3. Upload the privaye pem encryption file to github with name of cosign.key
