require "spec_helper"
require "codility/euclidean_algorithm/common_prime_divisors"

module Codility
  module EuclideanAlgorithm
    RSpec.describe CommonPrimeDivisors do
      describe ".solution" do
        it "returns the number of common prime divisors pairs" do
          a = [15, 10, 3]
          b = [75, 30, 5]
          expect(CommonPrimeDivisors.solution(a, b)).to eql(1)
        end

        context "for large data set" do
          it "is fast" do
            a = []
            b = []

            6_000.times do
              a << rand(2_000_000_000)
              b << rand(2_000_000_000)
            end

            time = Benchmark.realtime do
              expect(CommonPrimeDivisors.solution(a, b)).to be_an_instance_of(Fixnum)
            end

            expect(time).to be < 1
          end
        end
      end

      describe ".common_prime_divisors?" do
        context "when numbers have common prime divisors" do
          it "returns true" do
            expect(CommonPrimeDivisors.common_prime_divisors?(15, 75)).to eql(true)
          end
        end

        context "when numbers don't have common prime divisors" do
          it "returns false" do
            expect(CommonPrimeDivisors.common_prime_divisors?(10, 30)).to eql(false)
          end
        end
      end
    end
  end
end
