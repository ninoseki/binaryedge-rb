# frozen_string_literal: true

module BinaryEdge
  module Client
    module Action
      module Search
        #
        # Events based on a Query.
        #
        # @param [String] query String used to query our data
        # @param [Integer] page Default 1, Maximum: 500
        # @param [Integer, nil] only_ips If selected, only output IP addresses, ports and protocols.
        #
        # @return [Hash]
        #
        def search(query, page: 1, only_ips: nil)
          params = {
            query: query,
            page: page,
            only_ips: only_ips
          }.compact

          _get("/#{base_path}/search", params) { |json| json }
        end
      end
    end
  end
end
