require 'pry'

class PatternGenerator
  attr_reader :pattern

  def initialize(pattern)
    @pattern = pattern.upcase
    @output = []
    @num_count = 0
  end

  def chars_gen
    alphabet = ('A'..'Z').to_a.join
    alphabet.delete!('IO')
    alphabet.chars.sample
  end

  def num_gen
    (2..9).to_a.sample
  end

  def generator
    p_length = 0
    until p_length == @pattern.length
      if @pattern[p_length] == 'X'
        @output << chars_gen
      else
        @num_count += 1
        @output << num_gen
      end
      p_length += 1
    end
    @output.join('')
  end


end

p = PatternGenerator.new("xxxxxn")
puts p.generator
