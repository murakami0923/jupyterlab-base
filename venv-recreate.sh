#!/bin/bash

echo "既存のvenvを削除します"
rm -Rf ./.venv/

echo "venvのディレクトリを作成しなおします"
mkdir ./.venv/
touch ./.venv/.gitkeep

echo "pythonでvenv仮想環境を作成します"
python -m venv ./.venv/

echo "完了しました"
