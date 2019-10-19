require 'octokit'
require 'dotenv'

Dotenv.load
token = ENV['TOKEN']
repo = ENV['REPO']
github = Octokit::Client.new access_token: token
num = 30

def issue_title(i)
    "ボタン#{i}の色と動作を修正する"
end

def issue_body(i)
    colors = %w(赤色 青色 黄色 緑色 紫色)
    <<~EOS
    ## やること

    - ボタン#{i}の文字色を#{colors[i % colors.size]}にする
    - ボタン#{i}をクリックした時に「Done by (自分の名前)!」とアラート表示させる

    EOS
end

1.upto num do |i|
    # issueを登録
    github.create_issue(repo, issue_title(i), issue_body(i))
end
