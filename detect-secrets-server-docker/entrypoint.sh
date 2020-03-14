ssh-agent bash
ssh-agent add /root/.keys/id_rsa
exit
detect-secrets-server add ${repos}
