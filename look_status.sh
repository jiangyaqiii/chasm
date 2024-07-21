#!/bin/bash

if [[ $(docker ps -qf name=scout) ]]; then
    echo "chasm正在运行"
else
    echo "停止"
fi
