module Ganesha
  module UseCases
    class SaveLink
      def initialize(args)
        @args = args
      end

      def save
        links_repo.save(link)
      end

      private

      def link
        Entities::Link.new({ url: url, title: title })
      end

      def url
        @args.fetch(:url)
      end

      def title
        @args.fetch(:title)
      end

      def links_repo
        Repository.for(:links)
      end
    end
  end
end
