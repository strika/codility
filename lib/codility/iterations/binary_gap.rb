# BinaryGap
#
# Find longest sequence of zeros in binary representation of an integer.
#
module Codility
  module Iterations
    module BinaryGap
      def self.solution(n)
        binary = n.to_s(2)[/1.*1/] || ""
        sequences_of_zeros = binary.split(/1+/)
        sequences_of_zeros.map(&:size).max || 0
      end
    end
  end
end
