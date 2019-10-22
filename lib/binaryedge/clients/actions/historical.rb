# frozen_string_literal: true

module BinaryEdge
  module Client
    module Action
      module Historical
        #
        # Details about an object, with data up to 6 months.
        #
        # @param [String] target target IP address
        #
        # @return [Hash]
        #
        def historical(target)
          path = base_path == "query" ? "/query/ip/historical/#{target}" : "/#{base_path}/historical/#{target}"
          _get(path) { |json| json }
        end
      end
    end
  end
end
