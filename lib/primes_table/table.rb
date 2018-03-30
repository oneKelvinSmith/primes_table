# frozen_string_literal: true

module PrimesTable
  class Table
    def initialize(numbers = [])
      @numbers = numbers
    end

    def to_s
      return 'Empty table' if numbers.empty?

      table_string
    end

    private

    attr_reader :numbers

    def table_string
      table = row(cell, ->(n) { n })

      numbers.each do |n|
        table += row(cell(n), ->(y) { n * y })
      end

      table
    end

    def row(first_cell, contents)
      row = first_cell
      numbers.map do |number|
        row += cell(contents.call(number))
      end
      row += "\n"
    end

    def cell(entry = '')
      format " %#{width}s", entry
    end

    def width
      @width ||= max.to_s.length
    end

    def max
      numbers.last**2
    end
  end
end
