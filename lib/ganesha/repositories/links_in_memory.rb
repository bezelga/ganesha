module Ganesha
  module Repositories
    class LinksInMemory
      attr_reader :links, :next_id

      def initialize
        @links = {}
        @next_id = 1
      end

      def save(link)
        link.id = next_id
        links[next_id] = link
        link
      end

      def count
        links.length
      end
    end
  end
end
