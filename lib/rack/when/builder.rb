module Rack
  module When
    class Builder

      def initialize *args
        *@envs, @block = args
      end

      def mount
        @block.call if has_matching_env?
      end

      def has_matching_env?
        @envs.any? { |env| (ENV['RACK_ENV'] || ENV['RAILS_ENV'] || 'development') =~ /^#{env.to_s.downcase}/ }
      end

    end
  end
end
