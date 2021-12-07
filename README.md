# 基盤地図情報変換スクリプト

[基盤地図情報](https://fgd.gsi.go.jp/download/menu.php)をGPKGファイルに変換するスクリプトです。

## 使い方

500GBほどのストレージが必要になります。

1. [基盤地図情報](https://fgd.gsi.go.jp/download/menu.php)の基本項目を全てダウンロードして、cabファイルを全て展開する。
2. cabファイルを展開したものを`files`ディレクトリにコピーする。
3. `unzip_all.sh`を実行する
4. `convert.sh`を実行する