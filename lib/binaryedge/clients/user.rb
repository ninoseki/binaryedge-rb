# frozen_string_literal: true

module BinaryEdge
  module Client
    class User < Base
      def subscription
        _get("/user/subscription") { |json| json }
      end
    end
  end
end
