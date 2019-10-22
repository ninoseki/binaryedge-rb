# frozen_string_literal: true

module BinaryEdge
  module Client
    class Sensors < Base
      include Action::IP
      include Action::Search
      include Action::Stats

      def tag(target, days: 1)
        params = { days: days }
        _get("/query/sensors/tag/#{target}", params) { |json| json }
      end
    end
  end
end
