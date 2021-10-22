# frozen_string_literal: true

module Chatworkify
  class Cw
    def initialize(api_key = nil, room_id = nil)
      @api_key = api_key || ENV['CHATWORK_API_TOKEN']
      @room_id = room_id || ENV['CHATWORK_ROOM_ID']
    end

    def call(body = nil)
      ChatWork.api_key = @api_key
      body = body || 'No body input!'
      ChatWork::Message.create(room_id: @room_id, body: body)
    rescue ChatWork::APIError => e
      puts "#{e.message}"
    end
  end

  class CwLib
    class << self
      def text(status)
        case status
        when :starting
          fetch(:chatwork_deploy_starting_text)
        when :success
          fetch(:chatwork_deploy_succeed_text)
        when :failed
          fetch(:chatwork_deploy_failed_text)
        end
      end

      def message_body(status=:starting)
%{[code]👻   #{text(status)}
● 𝕊𝕥𝕒𝕘𝕖  : #{fetch(:stage).upcase!}
● 𝕊𝕖𝕣𝕧𝕖𝕣  : #{fetch(:ip_address)}
● 𝔹𝕣𝕒𝕟𝕔𝕙 : #{fetch(:branch)}
● ℝ𝕖𝕧𝕚𝕤𝕚𝕠𝕟: #{fetch(:current_revision) || '<empty>'}[/code]
}
      end
    end
  end
end
