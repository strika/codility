# PassingCars
#
# Count the number of passing cars on the road.
#
module Codility
  module Lesson5a
    def self.west?(car)
      car == 1
    end

    def self.solution(a)
      count = 0
      east_cars = 0

      a.each do |car|
        if west?(car)
          count += east_cars
        else
          east_cars += 1
        end
      end

      count <= 1000000000 ? count : -1
    end
  end
end
