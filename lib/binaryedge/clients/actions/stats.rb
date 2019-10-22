# frozen_string_literal: true

module BinaryEdge
  module Client
    module Action
      module Stats
        #
        # Statistics of recent events for the given query.
        #
        # @param [String] query String used to query our data.
        # @param [String] type Type of statistic we want to obtain.
        # @param [String] order Whether to sort descendently or ascendently to get the top.
        #
        # @return [Array]
        #
        def stats(query, type:, order:)
          params = {
            query: query,
            type: type,
            order: order
          }

          _get("/#{base_path}/search/stats", params) { |json| json }
        end
      end
    end
  end
end
