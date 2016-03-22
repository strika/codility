# PermMissingElem
#
# Find the missing element in a given permutation.
#
module Codility
  module Lesson3c
    def self.solution(a)
      n = a.size + 1
      sum = n * (n + 1) / 2
      sum - a.reduce(&:+).to_i
    end
  end
end
