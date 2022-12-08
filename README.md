# github-actions-markdown-to-pdf

## このリポジトリの目的

Github ActionsでMarkdownをPDFにしてReleaseにアップロードすることが可能かを試験する

## 実現できていること

- PRのマージなどでmasterブランチが更新されると、Github Actionsが動作し、更新されたMarkdownをPDFに変換してReleaseにアップロードする
- 最後に更新されたReleaseに、`docs-yyyymmdd-id.tgz`という名前でアップロードされる
- `subdir1/subdir2/sample.md`のようなファイル名の場合、`subdir1_subdir2_sample.pdf`というファイル名になる
- ファイル名やディレクトリ名は日本語も可

## 使い方

1. dockerフォルダ以下でdocker buildしてイメージを作成する
2. 作成したコンテナイメージをパブリックなレジストリに置く(今回はDocker Hubを使った)。プライベートなレジストリに置く場合は、Github Actionsでの認証をどうにかする
3. `.github\workflows\md2pdf.yml`の9行目の`image: kenichirokimura/md2pdf:latest`を自分のイメージ名に変更して、対象のリポジトリに含める
4. GitHubの対象のリポジトリのページのReleaseで、適当な名前のリリースを作成する
5. リポジトリ内のmarkdownを編集して、masterにマージする

## 含まれるファイルについて

```
├── README.md(本ファイル)
├── .gitattributes(md2pdf.shの改行コードを指定する設定ファイル)
├── .github
│   └── workflows
│       └── md2pdf.yml(github actionsのワークフローファイル)
├── docker(PDFに変換するコンテナイメージ用のファイル)
│   ├── Dockerfile
│   └── md2pdf.sh
└── サンプル(日本語フォルダ名が動くかのテスト)
    └── sample.md
```
