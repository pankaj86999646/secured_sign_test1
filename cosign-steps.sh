export COSIGN_PASSWORD="C@S1GN#$&"

# Sign the docker image
openssl rsa -in cosign.key -out decrypted_cosign.key

# Sign using the decrypted key
cosign sign --key decrypted_cosign.key arthanaharidas/python-hello-world

# Verify the docker image
cosign verify --key cosign.pub arthanaharidas/python-hello-world

# Logout docker
docker logout
