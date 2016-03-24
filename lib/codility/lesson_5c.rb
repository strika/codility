# GenomicRangeQuery
#
# Find the minimal nucleotide from a range of sequence DNA.
#
module Codility
  module Lesson5c
    def self.decode(s)
      s.chars.map do |c|
        case c
        when "A"
          1
        when "C"
          2
        when "G"
          3
        when "T"
          4
        end
      end
    end

    def self.solution(s, p, q)
      impact_factors = decode(s)

      (0...p.size).map do |i|
        impact_factors[p[i]..q[i]].min
      end
    end
  end
end
