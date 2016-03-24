# MinAvgTwoSlice
#
# Find the minimal average of any slice containing at least two elements.
#
module Codility
  module Lesson5d
    def self.average(slice)
      slice.reduce(&:+).to_f / slice.size
    end

    def self.solution(a)
      slices = []

      (0..(a.size - 1)).each do |i|
        ((i + 1)..a.size).each do |j|
          slices << [i, j]
        end
      end

      averages = slices.map do |i, j|
        average(a[i, j])
      end

      min_average = averages.min

      min_slice = slices.find { |i, j| average(a[i, j]) == min_average }

      min_slice[0]
    end
  end
end
