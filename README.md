# node-red
IoT Open Node-RED

# environment variables

* ADMIN_PASSWORD
* ROOT_PATH
* EDITOR_THEME
* CODE_EDITOR_THEME
* LYNX_URL (optional)
* REQUIRED_INSTALLATION (optional)

available `EDITOR_THEME` can befound [here](https://github.com/node-red-contrib-themes/theme-collection)

available `CODE_EDITOR_THEME` can be found [here](https://github.com/node-red/node-red/tree/master/packages/node_modules/%40node-red/editor-client/src/vendor/monaco/dist/theme)

If the LYNX_URL is set the Lynx platform is used as backend for authentication. The admin password is then not used.

If the REQUIRED_INSTALLATION is set only accounds associated with that installation can log in.

# Portainer assets

## portainer-templates.json

This file contains portainer application templates.

Go to Settings > App templates and change URL to 

`https://raw.githubusercontent.com/IoTOpen/node-red/master/portainer-templates.json`

## portainer-compose.yml

This file is a docker-compose file used in one of the portainer templates.

It contains a node-red instance with admin password and root path configurable through env-variables, and labels the container with appropriate traefik discovery lables.

* `${NAME}` will be used as root path and traefik service name
* `${ADMIN_PASSWORD}` will be used as the admin users password for node-red.
