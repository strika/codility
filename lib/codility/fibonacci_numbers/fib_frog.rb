# FibFrog
#
# Count the minimum number of jumps required for a frog to get to the other
# side of a river.
#
# Solution score - https://codility.com/demo/results/trainingA8QC3G-4CE/
#
module Codility
  module FibonacciNumbers
    module FibFrog
      def self.solution(a)
        river = River.new(a)
        frog = Frog.new(river)
        frog.steps_to_other_bank
      end

      class Frog
        def initialize(river)
          @river = river
        end

        def steps_to_other_bank
          positions = [Position.new(@river.size, 0)]

          while positions.any?
            position = positions.shift

            allowed_jumps.each do |f|
              new_position = position.jump(f)

              if @river.starting_bank?(new_position)
                return new_position.steps
              elsif @river.has_leaf?(new_position)
                @river.mark_visited(new_position)
                positions << new_position
              end
            end
          end

          -1
        end

        def allowed_jumps
          @allowed_jumps ||= fibonacci_numbers(@river.size + 1).drop(2)
        end

        def fibonacci_numbers(limit)
          a = 0
          b = 1
          fibs = [a, b]

          while (n = a + b) <= limit
            fibs << n
            a = b
            b = n
          end

          fibs
        end
      end

      class Position
        attr_reader :location, :steps

        def initialize(location, steps)
          @location = location
          @steps = steps
        end

        def jump(length)
          Position.new(@location - length, @steps + 1)
        end
      end

      class River
        def initialize(leaves)
          @leaves = leaves
        end

        def size
          @leaves.size
        end

        def has_leaf?(position)
          location = position.location
          location >= 0 && @leaves[location] == 1
        end

        def mark_visited(position)
          @leaves[position.location] = 0
        end

        def starting_bank?(position)
          position.location == -1
        end
      end
    end
  end
end
