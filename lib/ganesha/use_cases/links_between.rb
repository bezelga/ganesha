module Ganesha
  module UseCases
    class LinksBetween
      attr_reader :from, :to

      def initialize(args)
        @from = args.fetch(:from)
        @to = args.fetch(:to)
      end

      def links
        links_repo.between(from, to)
      end

      private

      def links_repo
        Repository.for(:links)
      end
    end
  end
end
