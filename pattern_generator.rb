require 'pry'

class PatternGenerator
  attr_reader :pattern, :num_count

  def initialize(pattern)
    @pattern   = pattern.upcase
    @output    = []
    @num_count = 0
  end

  def chars_gen
    ('A'..'Z').to_a.keep_if { |char| char != 'I' || 'O' }.sample
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

if __FILE__ == $0
p = PatternGenerator.new("xnxxn")
puts p.generator
puts p.num_count
end
