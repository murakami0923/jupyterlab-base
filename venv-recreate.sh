#!/bin/bash

echo "このプロジェクトのuvのキャッシュを削除します"
uv cache clean --project ./

echo "既存のvenvを削除します"
rm -Rf ./.venv/

echo "uvでvenv仮想環境を作成します"
uv venv ./.venv/

echo "venvのディレクトリに.gitkeepファイルを作成しなおします"
touch ./.venv/.gitkeep

echo "完了しました"
