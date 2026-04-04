#!/bin/bash

if [ ! -f ./.venv/bin/activate ]; then
    echo "venv環境がないので、作成してから、もう一度実行してください"
    exit
fi

source ./.venv/bin/activate

echo "pipをアップグレードします"
uv pip install --upgrade pip

echo "パッケージをインストールします"
uv pip install -r requirements.txt
