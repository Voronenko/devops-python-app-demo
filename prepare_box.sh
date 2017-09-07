# Static parameters
WORKSPACE=./
BOX_PLAYBOOK=$WORKSPACE/boxes/box_django_bootstrap.yml
BOX_NAME=sixteen
BOX_ADDRESS=178.62.255.186
BOX_USER=root
BOX_PWD=

prudentia ssh <<EOF
unregister $BOX_NAME

register
$BOX_PLAYBOOK
$BOX_NAME
$BOX_ADDRESS
$BOX_USER
$BOX_PWD

verbose 4
set box_address $BOX_ADDRESS

provision $BOX_NAME
EOF
