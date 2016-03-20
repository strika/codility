# BinaryGap
#
# Find longest sequence of zeros in binary representation of an integer.
#
module Codility
  module Lesson1
    def self.solution(n)
      matched_binary = n.to_s(2).match(/1.*1/)

      if matched_binary
        binary = matched_binary[0]
        sequences_of_zeros = binary.split(/1+/)
        sequences_of_zeros.map(&:size).max || 0
      else
        0
      end
    end
  end
end
