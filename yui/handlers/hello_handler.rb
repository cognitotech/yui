module Lita
  module Handlers
    class YuiHandler < Handler
      # Lita HTTPRoute for Slack: Outgoing WebHook integration

      route /([Hh]ello|[Hh]i)/, :hello, command: true
      route /([Hh]ello|[Hh]i)(\s\@?[Yy]ui)/, :hello

      def hello(response)
        response.reply "Hello #{response.user.name}"
      end

      def help(response)
        response.reply "How can I help you?"
      end

      def log
        Lita.logger
      end

      def config
        Lita.config.handlers.yui_handler
      end
    end

    Lita.register_handler(YuiHandler)
  end
end
