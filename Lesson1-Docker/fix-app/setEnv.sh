#!/bin/bash

if [ $# -eq 0 ] 
then
    read -p "Which environment (DEV, test, prod): " user_env
    user_env="${user_env:-dev}"
else
    user_env=$1
fi

if [ "${user_env:0:1}" == "d" ] || [ "${user_env:0:1}" == "D" ]; then
    export SECRET_KEY_BASE='1'
    export DATABASE_NAME=fix-app
    export DATABASE_USER=fix-app
    export DATABASE_PASSWORD='fix-app!1'
fi
if [ "${user_env:0:1}" == "t" ] || [ "${user_env:0:1}" == "T" ]; then
    export SECRET_KEY_BASE='2'
    export DATABASE_NAME=fix-app_test
    export DATABASE_USER=fix-app
    export DATABASE_PASSWORD='fix-app!1'
fi
if [ "${user_env:0:1}" == "p" ] || [ "${user_env:0:1}" == "P" ]; then
    export SECRET_KEY_BASE=8137101614151cabd5af001322f65cc79e9ed64c03ee2f6506579e3e71473ee37196fd9c93b5bcb1b138ccbdf703b3ad7ac8c9842fbc78b5f2d1e725c61e69d6
    export DATABASE_NAME=fix-app_prod
    export DATABASE_USER=fix-app
    export DATABASE_PASSWORD='fix-app!1'
fi


