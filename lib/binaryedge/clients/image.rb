# frozen_string_literal: true

module BinaryEdge
  module Client
    class Image < Base
      include Action::IP
      include Action::Search

      #
      # Get the list of possible tags for the images.
      #
      # @return [Array]
      #
      def tags
        _get("/query/image/tags") { |json| json }
      end
    end
  end
end
