# frozen_string_literal: true

require "binaryedge/version"

require "binaryedge/clients/actions/ip"
require "binaryedge/clients/actions/historical"
require "binaryedge/clients/actions/search"
require "binaryedge/clients/actions/stats"

require "binaryedge/clients/base"

require "binaryedge/clients/data_leaks"
require "binaryedge/clients/domains"
require "binaryedge/clients/host"
require "binaryedge/clients/image"
require "binaryedge/clients/risk_score"
require "binaryedge/clients/sensors"
require "binaryedge/clients/torrent"
require "binaryedge/clients/user"

require "binaryedge/api"

module BinaryEdge
  class Error < StandardError; end
end
