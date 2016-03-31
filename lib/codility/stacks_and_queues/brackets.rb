# Brackets
#
# Determine whether a given string of parentheses is properly nested.
#
# Solution score - https://codility.com/demo/results/trainingEYUK5Z-3WE/.
#
module Codility
  module StacksAndQueues
    module Brackets
      def self.solution(s)
        syntax_checker = SyntaxChecker.new

        s.chars.each do |c|
          return 0 unless syntax_checker.properly_nested?(c)
        end

        syntax_checker.empty? ? 1 : 0
      end

      class SyntaxChecker
        PARENS = { "(" => ")", "{" => "}", "[" => "]" }

        def initialize
          @stack = []
        end

        def empty?
          @stack.empty?
        end

        def properly_nested?(c)
          if open_paren?(c)
            @stack.push(c)
          else
            matching_parens?(@stack.pop, c)
          end
        end

        private

        def open_paren?(c)
          PARENS.keys.include?(c)
        end

        def matching_parens?(p1, p2)
          PARENS.any? { |open, close| p1 == open && p2 == close }
        end
      end
    end
  end
end
