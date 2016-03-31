# Fish
#
# N voracious fish are moving along a river. Calculate how many fish are alive.
#
# Solution score - https://codility.com/demo/results/trainingZXWJRE-3F2/.
#
module Codility
  module StacksAndQueues
    module Fish
      def self.solution(a, b)
        fish_parser = FishParser.new

        a.zip(b).each do |size, direction|
          fish_parser.process(size, direction)
        end

        fish_parser.alive_fish_count
      end

      class FishParser
        def initialize
          @fish = []
          @processed_fish = nil
        end

        def process(size, direction)
          @processed_fish = Fish.new(size, direction)

          process_fish while @processed_fish && @processed_fish.alive?
        end

        def alive_fish_count
          @fish.size
        end

        private

        def process_fish
          if @fish.empty?
            @fish.push(@processed_fish)
            @processed_fish = nil
          else
            last_fish = @fish.last

            if last_fish.meets?(@processed_fish)
              resolve_fish_meeting(last_fish)
            else
              @fish.push(@processed_fish)
              @processed_fish = nil
            end
          end
        end

        def resolve_fish_meeting(last_fish)
          if @processed_fish.size > last_fish.size
            @fish.pop.kill
          else
            @processed_fish.kill
          end
        end
      end

      class Fish
        attr_reader :size, :direction

        def initialize(size, direction)
          @size = size
          @direction = direction
          @alive = true
        end

        def meets?(fish)
          @direction == 1 && fish.direction == 0
        end

        def alive?
          @alive
        end

        def kill
          @alive = false
        end
      end
    end
  end
end
