module Ganesha
  module UseCases
    class SaveLink
      attr_reader :args

      def initialize(args)
        @args = args
      end

      def save
        return false unless link.valid?
        links_repo.save(link)
      end

      private

      def link
        Entities::Link.new(args)
      end

      def links_repo
        Repository.for(:links)
      end
    end
  end
end
