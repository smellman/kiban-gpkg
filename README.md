# 基盤地図情報変換スクリプト

[基盤地図情報](https://fgd.gsi.go.jp/download/menu.php)をGPKGファイルに変換するスクリプトです。

## 使い方

500GBほどのストレージが必要になります。

1. [基盤地図情報](https://fgd.gsi.go.jp/download/menu.php)の基本項目を全てダウンロードして、cabファイルを全て展開する。
2. cabファイルを展開したものを`files`ディレクトリにコピーする。
3. `unzip_all.sh`を実行する
4. `convert.sh`を実行する

作成後のファイルは100GBを超えるので注意すること

```
$ ls -lh kiban.gpkg      
-rw-r--r--  1 btm  staff   107G 12  7 10:54 kiban.gpkg
```

## ディレクトリ構成

```
.
├── README.md
├── convert.sh
├── files
│   ├── FG-GML-chubu-ALL-01-Z001
│   │   ├── FG-GML-503547-01-20211001
│   │   │   ├── FG-GML-503547-GCP-20211001-0001.xml
│   │   │   └── fmdid21-1001.xml
│   │   ├── FG-GML-503547-01-20211001.zip
...
```