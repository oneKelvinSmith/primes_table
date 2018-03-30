# frozen_string_literal: true

require 'primes_table/primes'
require 'primes_table/table'
require 'primes_table/version'

module PrimesTable
  def self.run(argv)
    primes = Primes.take(argv)
    print Table.new(primes).to_s
  end
end
