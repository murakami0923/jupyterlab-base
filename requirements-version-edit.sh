#!/bin/bash

# ファイル名の定義
REQ_FILE="requirements.txt"
FREEZE_FILE="pip-freeze.txt"
TEMP_FILE="requirements.tmp"

# ファイルの存在確認
if [[ ! -f "$REQ_FILE" ]]; then
    echo "エラー: $REQ_FILE が見つかりません。"
    exit 1
fi

if [[ ! -f "$FREEZE_FILE" ]]; then
    echo "エラー: $FREEZE_FILE が見つかりません。"
    exit 1
fi

# 一時ファイルを初期化
> "$TEMP_FILE"

echo "処理を開始します..."

# requirements.txt を1行ずつ読み込む
while IFS= read -r line || [[ -n "$line" ]]; do
    # 空行やコメント行 (#から始まる行) はそのまま出力してスキップ
    # 行の前後の空白を削除して判定
    trimmed_line=$(echo "$line" | xargs)
    
    if [[ -z "$trimmed_line" ]] || [[ "$trimmed_line" == \#* ]]; then
        echo "$line" >> "$TEMP_FILE"
        continue
    fi

    # パッケージ名を取得（念のため行末の空白などを除去）
    PKG_NAME="$trimmed_line"

    # pip-freeze.txt から正規表現で検索
    # 条件: 行頭(^) + パッケージ名 + "==" が一致する行を探す
    # -i オプションで大文字小文字の区別をなくす（pipは通常小文字で出力されますが、requirements手入力は大文字の可能性があるため）
    MATCHED_VERSION=$(grep -i "^${PKG_NAME}==" "$FREEZE_FILE")

    if [[ -n "$MATCHED_VERSION" ]]; then
        # マッチした場合、pip-freeze.txt の記述（バージョン付き）で上書き
        echo "$MATCHED_VERSION" >> "$TEMP_FILE"
        echo "更新: $PKG_NAME -> $MATCHED_VERSION"
    else
        # マッチしない場合、元の行を維持
        echo "$line" >> "$TEMP_FILE"
        echo "警告: $PKG_NAME は $FREEZE_FILE 内に見つかりませんでした。元の記述を維持します。"
    fi

done < "$REQ_FILE"

# 一時ファイルを正規のファイルに移動して上書き
mv "$TEMP_FILE" "$REQ_FILE"

echo "処理が完了しました。$REQ_FILE を更新しました。"
