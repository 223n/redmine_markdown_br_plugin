# Redmine Markdown BR Plugin

[![GitHub](https://img.shields.io/badge/license-Apache%20Version%202.0-blue.svg)](LICENSE)

Redmineのテキスト書式がMarkdownのとき、任意の位置で改行するためのマクロを
追加するプラグインです。

## メンテナンスを終了しました

このリポジトリは更新を終了し、アーカイブします。
最後の更新は2018年11月20日です。

**動作確認は2018年当時のRedmineでのみ行っています。** 現行のRedmineは
7.0系です。以後のバージョンでの動作は確認していません。

実装は `init.rb` の15行のみで、`Redmine::WikiFormatting::Macros.register`
でマクロを1つ登録するだけです。このAPIはRedmineの長期にわたり安定して
いますが、動作を保証するものではありません。

アーカイブ後も `git clone` での取得は可能です。

## 使い方

説明やWikiなどの改行したい場所で `{{br}}` と入力してください。
そこで `<br />` が出力されます。

## インストール

Redmineの `plugins/` 配下に配置し、Redmineを再起動します。

```bash
cd /path/to/redmine/plugins
git clone https://github.com/223n/redmine_markdown_br_plugin.git redmine_markdown_br
```

ディレクトリ名は `init.rb` で登録している識別子 `redmine_markdown_br` に
合わせてください。マイグレーションは不要です。

削除する場合はディレクトリごと消してRedmineを再起動します。

## License

[Apache License 2.0](LICENSE)
