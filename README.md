# JupyterLab Base Environment

データ分析およびAI活用を目的としたJupyterLabのベース環境構築用プロジェクトです。
Jupyter AIやCodeiumなどのAI支援ツールや、日本語化されたグラフ描画環境を含んでいます。

# 目次

- [JupyterLab Base Environment](#jupyterlab-base-environment)
- [目次](#目次)
  - [主な機能・ライブラリ](#主な機能ライブラリ)
    - [Core / IDE](#core--ide)
    - [AI Integration](#ai-integration)
    - [Data Analysis \& Visualization](#data-analysis--visualization)
    - [Utilities](#utilities)
  - [インストール、使用方法](#インストール使用方法)
    - [前提](#前提)
    - [初回インストール](#初回インストール)
    - [パッケージの追加・更新](#パッケージの追加更新)
    - [JupyterLabの起動](#jupyterlabの起動)
  - [ライセンス](#ライセンス)


## 主な機能・ライブラリ

`requirements.txt` に基づく主要な構成要素は以下の通りです。

### Core / IDE
*   **JupyterLab**: インタラクティブな開発環境 (v4系)
*   **jupyterlab-lsp**: Language Server Protocolによるコード補完・定義参照
*   **jupyterlab-codeium**: 高度なAIコード補完機能

### AI Integration
*   **Jupyter AI**: 生成AIをノートブック内で利用するための拡張機能

### Data Analysis & Visualization
*   **Pandas**: データ解析ライブラリ
*   **Matplotlib**: グラフ描画ライブラリ
*   **japanize-matplotlib**: Matplotlibの日本語フォント対応

### Utilities
*   **tqdm**: ループ処理の進捗バー表示
*   **pip-autoremove**: 依存パッケージを含めたアンインストールツール

## インストール、使用方法
### 前提

- UNIX系OSでbashを使えること
- Python3がインストールされていること（現時点で最新の3.14を想定）
- uvがインストールされていること
  - ※参考：[uv Installation](https://docs.astral.sh/uv/#installation)

### 初回インストール

以下のコマンドで依存パッケージを一括インストールできます。

```bash
python -m venv .venv/
source .venv/bin/activate
./pip-upgrade.sh
./pip-install-packages.sh
```

### パッケージの追加・更新

requirements.txt（pipパッケージのリスト）が更新された場合、以下のコマンドで依存パッケージを一括で追加・更新できます。

```bash
source .venv/bin/activate
./pip-install-packages.sh
```

### JupyterLabの起動

JupyterLabを起動するには、以下のコマンドを実行します。

```bash
./jupyterlab.sh
```

このbashを実行すると、JupyterLab起動の前にJupyterLabにアクセスするためのURLが表示されますので、コピーしておきます。

続いてJupyterLabが起動しますので、起動し終わったら、Webブラウザを起動し、先ほどコピーしたURLにアクセスします。

## ライセンス

本プロジェクトは MIT License の下で公開されています。

詳細は LICENSE.txt を参照してください。
