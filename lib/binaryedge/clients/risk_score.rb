# frozen_string_literal: true

module BinaryEdge
  module Client
    class RiskScore < Base
      include Action::IP

      #
      # Get list of CVEs that migh affect a specific IP.
      #
      # @param [String] target target IP address
      #
      # @return [Hash]
      #
      def cve(target)
        _get("/query/cve/ip/#{target}") { |json| json }
      end
    end
  end
end
