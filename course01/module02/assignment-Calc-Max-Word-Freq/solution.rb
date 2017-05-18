require_relative "module2_assignment"

# This script provides a sample execution of the Solution class
# that is consistent with what the rspec evaluation will perform.
# You may use it to sanity check your actual solution along side
# the rspec tests.

class LineAnalyzer
  attr_reader :content, :line_number, :highest_wf_words, :highest_wf_count

  def initialize (content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency
  end

  def calculate_word_frequency
    word_frequency = Hash(0)
    @content.split.each do |word|
      word_frequency[word.upcase] = word_frequency[word.upcase] + 1
    end
    @highest_wf_words = word_frequency.values.max
    word_frequency.each do |word, frequency|
      
    end
  end
end

def analyze_file

end
solution = Solution.new
#expect errors until you implement these methods
solution.analyze_file
solution.calculate_line_with_highest_frequency
solution.print_highest_word_frequency_across_lines
