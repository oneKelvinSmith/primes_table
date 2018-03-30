# frozen_string_literal: true

module PrimesTable
  class Table
    def initialize(numbers)
      @numbers = numbers
    end

    def to_s
      table = first_row
      table = append_rows(table)
      table
    end

    private

    attr_reader :numbers

    def first_row
      row = cell
      numbers.map do |num|
        row += cell(num)
      end
      row += "\n"
    end

    def append_rows(table)
      numbers.each do |x|
        table += cell(x)
        numbers.each do |y|
          table += cell(x * y)
        end
        table += "\n"
      end
      table
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
