# GenomicRangeQuery
#
# Find the minimal nucleotide from a range of sequence DNA.
#
module Codility
  module PrefixSums
    module GenomicRangeQuery
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

      def self.solution_slow(s, p, q)
        impact_factors = decode(s)

        (0...p.size).map do |i|
          impact_factors[p[i]..q[i]].min
        end
      end

      def self.solution(s, p, q)
        impact_factors = decode(s)
        minimum_impact_factors = Array.new(impact_factors.size)

        (impact_factors.size - 1).downto(0).each do |i|
          current_impact_factor = impact_factors[i]
          leading_impact_factors = minimum_impact_factors[i + 1] || {}
          minimum_impact_factors[i] = leading_impact_factors.merge(current_impact_factor => i)
        end

        (0...p.size).map do |i|
          start_index = p[i]
          end_index = q[i]
          minimum_impact_factors_for_start_index = minimum_impact_factors[start_index]

          minimum_impact_factor = (1..4).find do |factor|
            f = minimum_impact_factors_for_start_index[factor]
            f && f <= end_index
          end

          minimum_impact_factor || impact_factors[start_index]
        end
      end
    end
  end
end
