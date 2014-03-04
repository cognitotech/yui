require File.expand_path('../yui/handlers/hello_handler', __FILE__)


Lita.configure do |config|
  config.robot.name = "Yui"
  config.robot.mention_name = "@Yui"
  config.robot.log_level = :debug
  if ENV['YUIMODE'] == "dev"
    config.robot.adapter = :shell
  else
    config.robot.adapter = :slack
  end
  config.adapter.incoming_token = ENV['INCOMING_TOKEN'] ""
  config.adapter.team_domain = "siliconstraits"
  config.adapter.username = "Yui"

  config.handlers.slack_handler.team_domain = "siliconstraits"
  config.handlers.slack_handler.outcoming_token = ENV['OUTCOMING_TOKEN']
end
