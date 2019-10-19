require 'octokit'
require 'dotenv'

Dotenv.load
token = ENV['TOKEN']
repo = ENV['REPO']
github = Octokit::Client.new access_token: token

issues = github.issues repo
numbers = issues.map(&:number)
numbers.each {|i| github.close_issue(repo, i)}
