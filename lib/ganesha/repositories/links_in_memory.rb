module Ganesha
  module Repositories
    class LinksInMemory
      attr_reader :links, :next_id

      def initialize
        @links = {}
        @next_id = 1
      end

      def all
        links.values
      end

      def between(from, to)
        range = from..to

        all.select do |link|
          range.cover? link.created_at.to_date
        end
      end

      def save(link)
        link.id = next_id
        links[next_id] = link
        @next_id += 1
        link
      end

      def count
        links.length
      end
    end
  end
end
