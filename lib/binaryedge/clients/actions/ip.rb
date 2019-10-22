# frozen_string_literal: true

module BinaryEdge
  module Client
    module Action
      module IP
        #
        # Details about an object
        #
        # @param [String] target target IP address or CIDR up to /24
        #
        # @return [Hash]
        #
        def ip(target)
          _get("/#{base_path}/ip/#{target}") { |json| json }
        end
      end
    end
  end
end
