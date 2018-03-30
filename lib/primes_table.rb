# frozen_string_literal: true

require 'primes_table/primes'
require 'primes_table/table'
require 'primes_table/version'

module PrimesTable
  def self.run(arg = '10')
    number = arg.to_i
    if number <= 0
      puts 'Please provide a positive integer...'
    else
      primes = Primes.take(number)
      print Table.new(primes)
    end
  end
end
