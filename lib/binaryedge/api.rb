# frozen_string_literal: true

module BinaryEdge
  class API
    attr_reader :api_key

    def initialize(api_key = ENV["BINARYEDGE_API_KEY"])
      @api_key = api_key
      raise ArgumentError, "No API key has been found or provided!" unless api_key
    end

    def user
      @user ||= Client::User.new(api_key)
    end

    def host
      @host ||= Client::Host.new(api_key)
    end

    def image
      @image ||= Client::Image.new(api_key)
    end

    def data_leaks
      @data_leaks ||= Client::DataLeaks.new(api_key)
    end

    def torrent
      @torrent ||= Client::Torrent.new(api_key)
    end

    def risk_score
      @risk_score ||= Client::RiskScore.new(api_key)
    end

    def domains
      @domains ||= Client::Domains.new(api_key)
    end

    def sensors
      @sensors ||= Client::Sensors.new(api_key)
    end
  end
end
