# MaxCounters
#
# Calculate the values of counters after applying all alternating operations:
# increase counter by 1; set value of all counters to current maximum.
#
module Codility
  module Lesson4d
    def self.solution(n, a)
      counters = Array.new(n, 0)
      current_max = 0
      counter_max = 0

      a.each do |x|
        if x <= n
          i = x - 1
          counters[i] = [counters[i], counter_max].max + 1
          current_max = [current_max, counters[i]].max
        else
          counter_max = current_max
        end
      end

      counters.map { |c| [c, counter_max].max }
    end
  end
end
