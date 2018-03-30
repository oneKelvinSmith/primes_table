# frozen_string_literal: true

require 'primes_table/primes'
require 'primes_table/table'
require 'primes_table/version'

module PrimesTable
  def self.run(arg = nil)
    number = arg.nil? ? 10 : arg.to_i
    if number <= 0
      puts 'Please provide a positive integer...'
    else
      primes = Primes.take(number)
      print Table.new(primes)
    end
  end
end
