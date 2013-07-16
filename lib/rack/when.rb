require "rack/when/version"
require "rack/when/builder"
require "rack/builder"

module Rack
  module When
    class << self

      def development &block
        environment :development, &block
      end

      def test &block
        environment :test, &block
      end

      def staging &block
        environment :staging, &block
      end

      def production &block
        environment :production, &block
      end

      def environments *environments, &block
        Builder.new(*environments,block).mount
      end

      def environment environment, &block
        Builder.new(environment,block).mount
      end

    end
  end
end
