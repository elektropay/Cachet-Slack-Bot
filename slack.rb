require 'http'
require 'json'

rc = HTTP.post("https://slack.com/api/chat.postMessage", params:{
  token: ENV['SLACK_API_TOKEN'],
  channel: 'test-emails',
  text: 'no.',
  attachments: 'really?',
  icon_emoji: ':white_check_mark:'
  })
puts JSON.pretty_generate(JSON.parse(rc.body))
