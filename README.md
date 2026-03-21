# JupyterLab Base Environment

データ分析およびAI活用を目的としたJupyterLabのベース環境構築用プロジェクトです。
Jupyter AIやCodeiumなどのAI支援ツールや、日本語化されたグラフ描画環境を含んでいます。

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

## インストール方法

以下のコマンドで依存パッケージを一括インストールできます。

```bash
pip install -r requirements.txt
```

## ライセンス

本プロジェクトは **GNU General Public License v3.0 (GPLv3)** の下で公開されています。
詳細は LICENSE.txt を参照してください。
