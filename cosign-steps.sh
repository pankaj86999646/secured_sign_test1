export COSIGN_PASSWORD="C@S1GN#$&"

# Decrypt the private key
openssl rsa -in cosign.key -out decrypted_cosign.key

# Sign using the decrypted key
cosign sign --key cosign.key arthanaharidas/python-hello-world

# Verify the docker image
cosign verify --key cosign.pub arthanaharidas/python-hello-world

# Logout docker
docker logout
