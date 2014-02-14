module Ganesha
  module UseCases
    class CurrentLinks
      def links
        links_repo.all
      end

      private

      def links_repo
        Repository.for(:links)
      end
    end
  end
end
