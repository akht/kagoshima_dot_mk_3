# 鹿児島.mk #3

connpass: [鹿児島.mk #3 GitとPull Requestを活用したチーム開発手法の紹介及び体験会](https://kagoshima-mk.connpass.com/event/150769/)

このイベントで使うリポジトリです。

Netlifyで公開しています。
https://silly-cray-a8656a.netlify.com/

## 準備

- マシンにGitをインストールする
- GitHubに登録する

### Windowsでのインストール方法
- [【Windows】Gitの環境構築をしよう！](https://prog-8.com/docs/git-env-win) を参考にインストールする。
- [【Git】Windows環境でGitHubにSSH接続してコミットするまでの手順](https://qiita.com/hollyhock0518/items/a3fee20951cd92c87ed9) を参考に鍵認証の設定を行う。

### Macでのインストール方法
- [Git のインストール 〜Git をMacにインストールしよう〜](https://tracpath.com/bootcamp/git-install-to-mac.html) を参考にインストールする。

GitHubに登録したら、アカウントを主催者陣に教えてください。
このリポジトリのコラボレータに招待します。

## 今回やること

イベントページにもある通り、Git/GitHubを使ったチーム開発を体験します。

まず「Git/GitHubってなに？どんな感じで使うの？」を簡単に説明したあと、
実際に開発を体験してもらいます。

## [GitとGitHub用語集](https://zukulog098r.com/git/)

![GitとGitHub用語集1](image/git-1-5.png "GitとGitHub用語集1")

![GitとGitHub用語集2](image/git-2-5.png "GitとGitHub用語集2")

![GitとGitHub用語集3](image/git-3-4.png "GitとGitHub用語集3")

![GitとGitHub用語集4](image/git-4-5.png "GitとGitHub用語集4")

[【イラストで覚える】初心者のためのGitとGitHub用語集](https://zukulog098r.com/git/) より引用

### 開発の流れ

1. リポジトリのissueを確認して、自分がやると宣言する
1. リポジトリをローカルマシンにclone
1. `index.html`をブラウザで開く
1. ボタンが並んでいるので、自分が対応するボタンを確認
1. ローカルで修正用ブランチを切る
1. 修正をcommitして、ブランチをGitHubにpushする
1. GitHub上でPull Requestを作成する
1. レビューを依頼する
1. レビューがOKならmasterブランチにmergeする
1. [本番環境](https://silly-cray-a8656a.netlify.com/)で確認する
