module Ganesha
  module UseCases
    class SaveLink
      attr_reader :url, :title

      def initialize(url, title)
        @url = url
        @title = title
      end

      def save
        links_repo.save(link)
      end

      private

      def link
        Entities::Link.new({ url: url, title: title })
      end

      def links_repo
        Repository.for(:links)
      end
    end
  end
end
