# frozen_string_literal: true

module PrimesTable
  module Primes
    FIRST_TEN = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29].freeze

    class << self
      def take(count)
        raise_if_negative(count)

        return FIRST_TEN.take(count) if count <= FIRST_TEN.size

        generate(count, FIRST_TEN.dup)
      end

      private

      def raise_if_negative(count)
        raise ArgumentError, 'negative integer' if count.negative?
      end

      def generate(count, primes)
        number = primes.last

        while primes.size < count
          number += 2
          primes << number if prime?(number, primes)
        end

        primes
      end

      def prime?(number, primes)
        primes.none? do |prime|
          return true if prime > Math.sqrt(number)

          (number % prime).zero?
        end
      end
    end
  end
end
