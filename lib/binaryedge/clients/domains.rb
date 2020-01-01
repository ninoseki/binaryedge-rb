# frozen_string_literal: true

module BinaryEdge
  module Client
    class Domains < Base
      include Action::IP
      include Action::Search

      #
      # Return list of subdomains known from the target domains
      #
      # @param [String] target Domain you want to get list of known subdomains.
      # @param [Integer] page Default 1, Maximum: 500
      #
      # @return [Hash]
      #
      def subdomain(target, page: 1)
        params = { page: page }
        _get("/query/domains/subdomain/#{target}", params) { |json| json }
      end

      #
      # Return list of known DNS results for the target domain.
      #
      # @param [String] Domain you want to get DNS related data.
      # @param [Integer] page Default 1, Maximum: 500
      #
      # @return [Hash]
      #
      def dns(target, page: 1)
        params = { page: page }
        _get("/query/domains/dns/#{target}", params) { |json| json }
      end

      #
      # Enumerate subdomains from a larger dataset
      #
      # @param [String] target Domain you want to get DNS related data.
      # @param [Integer] validate Optional, Forces all subdomains to be resolved on request and only live subdomains to be returned. Default: 0 (False)
      #
      # @return [Hash]
      #
      def enumeration(target, validate: 0)
        params = { validate: validate }
        _get("/query/domains/enumeration/#{target}", params) { |json| json }
      end

      #
      # Generate a list of homoglyphs for a base domain
      #
      # @param [String] target Domain you want to get DNS related data.
      # @param [Integer] validate Optional, Forces all subdomains to be resolved on request and only live subdomains to be returned. Default: 0 (False)
      #
      # @return [Hash]
      #
      def homoglyphs(target, validate: 0)
        params = { validate: validate }
        _get("/query/domains/homoglyphs/#{target}", params) { |json| json }
      end
    end
  end
end
