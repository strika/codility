# Dominator
#
# Find an index of an array such that its value occurs at more than half of
# indices in the array.
#
# Solution score - https://codility.com/demo/results/trainingH7Z7N7-BJT/.
#
module Codility
  module Leader
    module Dominator
      def self.solution(a)
        SequenceLeader.new(a).index || -1
      end

      class SequenceLeader
        attr_reader :value, :count, :index

        def initialize(sequence)
          @sequence = sequence
          @value = find_leader
          @count = count_leader
          @index = @sequence.find_index(@value) if @value
        end

        private

        def find_leader
          value = leader_candidate
          value_count = @sequence.count { |n| n == value }

          if value_count > @sequence.size / 2
            value
          end
        end

        def leader_candidate
          value = nil
          size = 0

          @sequence.each do |n|
            if size == 0
              value = n
              size += 1
            else
              if value != n
                size -= 1
              else
                size += 1
              end
            end
          end

          value
        end

        def count_leader
          @sequence.count { |n| n == @value }
        end
      end
    end
  end
end
