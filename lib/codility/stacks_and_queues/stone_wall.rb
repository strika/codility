# StoneWall
#
# Cover "Manhattan skyline" using the minimum number of rectangles.
#
# Solution score - https://codility.com/demo/results/trainingKXPVDC-EKR/
#
module Codility
  module StacksAndQueues
    module StoneWall
      def self.solution(h)
        wall = Wall.new

        h.each { |size| wall.add(size) }

        wall.blocks.size
      end

      class Wall
        attr_reader :blocks, :active_blocks

        def initialize
          @blocks = []
          @active_blocks = []
          @current_size = 0
        end

        def add(size)
          while size < @current_size
            @current_size -= @active_blocks.pop
          end

          if size > @current_size
            new_block = size - @current_size

            @blocks.push(new_block)
            @active_blocks.push(new_block)
            @current_size += new_block
          end
        end
      end
    end
  end
end
