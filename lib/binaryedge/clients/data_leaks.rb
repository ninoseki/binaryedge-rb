# frozen_string_literal: true

module BinaryEdge
  module Client
    class DataLeaks < Base
      #
      # Verify how many dataleaks affected an specific email address.
      #
      # @param [String] email Verify which dataleaks affect the target email.
      #
      # @return [Hash]
      #
      def email(email)
        _get("/query/dataleaks/email/#{email}") { |json| json }
      end

      #
      # Verify how many emails are affected by dataleaks for a specific domain
      #
      # @param [String] domain Verify which dataleaks affect the target domain.
      #
      # @return [Hash]
      #
      def organization(domain)
        _get("/query/dataleaks/organization/#{domain}") { |json| json }
      end

      #
      # Get all available information about the dataleaks our platform keeps track.
      #
      # @return [Hash]
      #
      def info
        _get("/query/dataleaks/info") { |json| json }
      end
    end
  end
end
