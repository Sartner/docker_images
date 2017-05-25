#!/bin/sh
#set -ex

THE_ARGS="$@"
FILEBEAT_CONFIG_FILE=""

generateConfigFileFromEnv(){

    echo "generate filebeat configuration file from /filebeat.yml.base64"

    if [ ! -f "/filebeat.yml.base64" ]; then
        echo "filebeat.yml.base64 is not exists"
        exit 1
    fi

    base64 -d /filebeat.yml.base64 > $FILEBEAT_CONFIG_FILE

}


# Get filebeat config file path from args
getConfigFileFromArgs(){
    for i in "$@"
    do
        case $1 in
            "-c" )
                FILEBEAT_CONFIG_FILE=$2
                echo "Get filebeat config file '${FILEBEAT_CONFIG_FILE}' from args"
                shift
                return
                ;;
        esac
        shift
    done

    echo "filebeat config file not set, exit."
    exit 1
}



# Add filebeat as command if needed
if [ "${1:0:1}" = '-' ]; then

    getConfigFileFromArgs "$@"

    if [ ! -f "$FILEBEAT_CONFIG_FILE" ];then
        # generate filebeat config file from /filebeat.yml.base64 if the config file not exists.
        echo  "filebeat config file not exists."
        generateConfigFileFromEnv
    else
        echo "filebeat config file exists."
    fi

    set -- filebeat "$@"
fi

echo "execute: $@"
exec "$@"