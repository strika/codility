# NumberOfDiscIntersections
#
# Compute the number of intersections in a sequence of discs.
#
# Score score - https://codility.com/demo/results/trainingF465M3-ERS/.
#
module Codility
  module Sorting
    module NumberOfDiscIntersections
      def self.solution(a)
        points_collection = build_points_collection(a)
        count_intersections(points_collection)
      end

      def self.build_points_collection(a)
        points_collection = PointCollection.new

        a.each.with_index do |radius, x|
          start_point = x - radius
          end_point = x + radius

          points_collection.fetch(start_point).inc_start_count
          points_collection.fetch(end_point).inc_end_count
        end

        points_collection
      end

      def self.count_intersections(points_collection)
        intersections = 0
        active = 0

        points_collection.points.keys.sort.each do |x|
          point = points_collection.fetch(x)
          active += point.start_count
          e = point.end_count
          intersections += e * (active - 1) - e * (e - 1) / 2
          active -= e

          return -1 if intersections > 10_000_000
        end

        intersections
      end
    end

    class Point
      attr_reader :x, :start_count, :end_count

      def initialize(x)
        @x = x
        @start_count = 0
        @end_count = 0
      end

      def inc_start_count
        @start_count += 1
      end

      def inc_end_count
        @end_count += 1
      end
    end

    class PointCollection
      attr_reader :points

      def initialize
        @points = {}
      end

      def add(point)
        @points[point.x] = point
      end

      def fetch(x)
        if @points[x].nil?
          @points[x] = Point.new(x)
        end

        @points[x]
      end
    end
  end
end
