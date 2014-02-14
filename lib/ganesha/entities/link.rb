module Ganesha
  module Entities
    class Link
      attr_accessor :id
      attr_reader :url, :title, :created_at

      def initialize(args)
        @url = args.fetch(:url, '')
        @title = args.fetch(:title, '')
        @created_at = args.fetch(:created_at) { Time.now }
      end

      # TODO: tell which field is not present if invalid
      def valid?
        url_present? && title_present?
      end

      private

      def url_present?
        url && !url.empty?
      end

      def title_present?
        title && !title.empty?
      end
    end
  end
end
