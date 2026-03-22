#!/bin/bash

echo "----- .venv ディレクトリを削除します -----"
rm -Rf .venv/

echo "----- .venv ディレクトリを作成します -----"
mkdir .venv/

echo "----- .venv/.gitkeep ファイルを作成します -----"
touch .venv/.gitkeep

echo "----- venv を作成します -----"
python -m venv .venv/

echo "----- venv の作成が完了しました -----"
