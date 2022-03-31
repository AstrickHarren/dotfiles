docker run --rm -it \
-v /run/host-services/ssh-auth.sock:/ssh-agent \
-e SSH_AUTH_SOCK='/ssh-agent' \
--name bats-py \
$@
