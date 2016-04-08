require "spec_helper"
require "codility/sieve_of_eratosthenes/count_semiprimes"

module Codility
  module SieveOfEratosthenes
    RSpec.describe CountSemiprimes do
      describe ".solution" do
        it "returns number of semi primes for each range" do
          p = [1, 4, 16]
          q = [26, 10, 20]

          expect(CountSemiprimes.solution(26, p, q)).to eql([10, 4, 0])
        end

        it "returns number of semi primes for each range" do
          p = [1]
          q = [1]

          expect(CountSemiprimes.solution(1, p, q)).to eql([0])
        end

        context "for large data set" do
          it "is fast" do
            n = 50_000
            p = []
            q = []

            30_000.times do
              a = rand(25_000)
              b = a + rand(25_000)

              p << a
              q << b
            end

            time = Benchmark.realtime do
              expect(CountSemiprimes.solution(n, p, q)).to be_an_instance_of(Array)
            end

            expect(time).to be < 1
          end
        end
      end

      describe ".factors" do
        it "returns all factors of the number" do
          expect(CountSemiprimes.primes(26)).to eql([2, 3, 5, 7, 11, 13, 17, 19, 23])
        end
      end

      describe ".semi_primes" do
        it "returns all semi prime factors lower than the number" do
          expect(CountSemiprimes.semi_primes(26)).to eql([4, 6, 9, 10, 14, 15, 21, 22, 25, 26])
        end
      end
    end
  end
end
