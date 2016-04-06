# EquiLeader
#
# Find the index S such that the leaders of the sequences A[0], A[1], ..., A[S]
# and A[S + 1], A[S + 2], ..., A[N - 1] are the same.
#
# Solution score - https://codility.com/demo/results/trainingC3MY7J-PGC/.
#
module Codility
  module Leader
    module EquiLeader
      def self.solution(a)
        sequence_leader = SequenceLeader.new(a)

        return 0 if sequence_leader.value.nil?

        equi_leader_count = 0
        leader_count = 0

        a.each.with_index do |n, index|
          leader_count += 1 if n == sequence_leader.value
          first_sequence_size = index + 1

          if leader?(leader_count, first_sequence_size) &&
              leader?(sequence_leader.count - leader_count, a.size - first_sequence_size)
            equi_leader_count += 1
          end
        end

        equi_leader_count
      end

      def self.leader?(leader_count, total_count)
        leader_count > total_count / 2
      end

      def self.slow_solution(a)
        equi_leader_count = 0

        (0...a.size).each do |i|
          s1 = a[0..i]
          s2 = a[(i + 1)..-1]

          sequence_leader_1 = SequenceLeader.new(s1)
          sequence_leader_2 = SequenceLeader.new(s2)

          if sequence_leader_1.value &&
              sequence_leader_2.value &&
              sequence_leader_1.value == sequence_leader_2.value
            equi_leader_count += 1
          end
        end

        equi_leader_count
      end
    end

    class SequenceLeader
      attr_reader :value, :count

      def initialize(sequence)
        @sequence = sequence
        @value = find_leader
        @count = count_leader
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
