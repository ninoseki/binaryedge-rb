# frozen_string_literal: true

require "json"
require "net/https"
require "uri"

module BinaryEdge
  module Client
    class Base
      HOST = "api.binaryedge.io"
      VERSION = "v2"
      BASE_URL = "https://#{HOST}/#{VERSION}"

      attr_reader :api_key

      def initialize(api_key)
        @api_key = api_key
      end

      private

      def url_for(path)
        URI(BASE_URL + path)
      end

      def https_options
        if proxy = ENV["HTTPS_PROXY"] || ENV["https_proxy"]
          uri = URI(proxy)
          {
            proxy_address: uri.hostname,
            proxy_port: uri.port,
            proxy_from_env: false,
            use_ssl: true
          }
        else
          { use_ssl: true }
        end
      end

      def default_headers
        { "X-Key": api_key }
      end

      def make_request(req)
        Net::HTTP.start(HOST, 443, https_options) do |http|
          response = http.request(req)

          code = response.code.to_i
          body = response.body
          json = JSON.parse(body)

          case code
          when 200
            yield json
          else
            error = json.dig("message") || body
            raise Error, "Unsupported response code returned: #{code} - #{error}"
          end
        end
      end

      def build_request(type: "GET", path:, params: {})
        uri = url_for(path)
        uri.query = URI.encode_www_form(params) if type == "GET"

        request = case type
                  when "GET"
                    Net::HTTP::Get.new(uri, default_headers)
                  when "POST"
                    Net::HTTP::Post.new(uri, default_headers)
                  else
                    raise ArgumentError, "#{type} HTTP method is not supported"
                  end

        request.body = JSON.generate(params) unless type == "GET"
        request
      end

      def _get(path, params = {}, &block)
        request = build_request(type: "GET", path: path, params: params)
        make_request(request, &block)
      end

      def _post(path, params = {}, &block)
        request = build_request(type: "POST", path: path, params: params)
        make_request(request, &block)
      end

      CONVERT_TABLE = {
        domains: "domains",
        host: nil,
        image: "image",
        riskscore: "score",
        sensors: "sensors",
        torrent: "torrent",
      }.freeze

      def klass
        self.class.to_s.split("::").last.to_s.downcase.to_sym
      end

      def base_path
        name = CONVERT_TABLE.fetch(klass)
        ["query", name].compact.join("/")
      end
    end
  end
end
