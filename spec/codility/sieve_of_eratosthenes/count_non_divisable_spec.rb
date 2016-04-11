require "spec_helper"
require "codility/sieve_of_eratosthenes/count_non_divisable"

module Codility
  module SieveOfEratosthenes
    RSpec.describe CountNonDivisible do
      describe ".solution" do
        it "counts non divisable" do
          a = [3, 1, 2, 3, 6]
          expect(CountNonDivisible.solution(a)).to eql([2, 4, 3, 2, 0])
        end

        context "with large data set" do
          it "is fast" do
            a = []
            50_000.times { a << rand(100_000) }

            time = Benchmark.realtime do
              expect(CountNonDivisible.solution(a)).to be_an_instance_of(Array)
            end

            expect(time).to be < 1
          end
        end

        context "with large range" do
          it "is fast" do
            a = (1..50_000).to_a.shuffle

            time = Benchmark.realtime do
              expect(CountNonDivisible.solution(a)).to be_an_instance_of(Array)
            end

            expect(time).to be < 1
          end
        end
      end

      describe ".find_divisors" do
        it "returns divisors" do
          a = [3, 1, 2, 3, 6]
          expect(CountNonDivisible.find_divisors(a)).to eql([0, 1, 2, 3, 2, 1, 5])
        end
      end
    end
  end
end
