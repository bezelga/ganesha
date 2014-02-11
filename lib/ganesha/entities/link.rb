module Ganesha
  module Entities
    class Link
      attr_accessor :id
      attr_reader :url, :title

      def initialize(args)
        @url = args.fetch(:url, '')
        @title = args.fetch(:title, '')
      end
    end
  end
end
