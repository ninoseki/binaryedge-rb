# frozen_string_literal: true

module BinaryEdge
  module Client
    class Torrent < Base
      include Action::IP
      include Action::Historical
      include Action::Search
      include Action::Stats
    end
  end
end
