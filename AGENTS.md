# AGENT.md

このファイルは、このリポジトリのコードを扱う際に、コーディングAIへのガイドラインを提供します。

## プロジェクト概要

JupyterLabの環境を構築するベースです

## 会話ガイドライン

- 常に日本語で会話する (Always communicate in Japanese)

## プロジェクト要件



### 技術スタック

- Python
- venv：./.venv に作成
- uv
- JupyterLab


### 必要な Git 設定
以下の内容で .gitignore を作成：
```gitignore
# WSL2
*:Zone.Identifier

# env
.env

# Jupyter Notebook
.ipynb_checkpoints

```

## 開発ルール
- **すべてのメッセージ、説明、報告は日本語で行うこと。**
- **プログラムのソースコードに追記・修正を行う場合は、日本語でコメントを入れること。**
- **環境に関する設定、特に、APIキーやトークななどの気密性の高い設定は、コードに直接記述せず、.envファイルに定義し、参照すること。**
- .envはgit管理に入れず、設定項目を記載した.env.exampleファイルをgit管理に入れること
- 空のディレクトリを保持するために .gitkeep ファイルを含める
