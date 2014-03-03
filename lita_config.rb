# Lita.configure do |config|
#   # The name your robot will use.
#   config.robot.name = "Yui"
#   config.robot.mention_name = "@Yui"


#   # The locale code for the language to use.
#   # config.robot.locale = :en

#   # The severity of messages to log. Options are:
#   # :debug, :info, :warn, :error, :fatal
#   # Messages at the selected level and above will be logged.
#   config.robot.log_level = :debug

#   # An array of user IDs that are considered administrators. These users
#   # the ability to add and remove other users from authorization groups.
#   # What is considered a user ID will change depending on which adapter you use.
#   # config.robot.admins = ["1", "2"]

#   # The adapter you want to connect with. Make sure you've added the
#   # appropriate gem to the Gemfile.
#   config.robot.adapter = :slack
#   config.adapter.username = "Yui"

#   config.adapter.team_domain = "siliconstraits"
#   ## Example: Set options for the chosen adapter.
#   # config.adapter.username = "myname"
#   # config.adapter.password = "secret"
#   config.adapter.incoming_token = ENV['incoming_token']
#   config.handlers.slack_handler.webhook_token = ENV['outcoming_token']

#   ## Example: Set options for the Redis connection.
#   # config.redis.host = "127.0.0.1"
#   # config.redis.port = 1234

#   ## Example: Set configuration for any loaded handlers. See the handler's
#   ## documentation for options.
#   # config.handlers.some_handler.some_config_key = "value"
# end
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
  config.adapter.incoming_token = "2HUSR5dWK9N1Q1Rl7ImEuxP3"
  config.handlers.slack_handler.webhook_token = "pfRAZZh0rpu0LfiEiMBJuBBM"
  config.adapter.incoming_url = "https://siliconstraits.slack.com/services/hooks/incoming-webhook"
  config.adapter.team_domain = "siliconstraits"
  config.adapter.username = "Yui"
  config.handlers.slack_handler.team_domain = "siliconstraits"
end
