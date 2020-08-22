require 'pry'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part",
              "partner","sit"]

def substrings(string, dictionary)
  result = {}
  i = 0
  combined_strings = string.downcase.gsub(/[^a-zA-Z]/, '')
  dictionary.each do |word|
    if(combined_strings.include? "#{word}")
      result[word] = combined_strings.gsub(word).count
    end
  end
  p result
end

puts "Enter string: "
string = gets.chomp
substrings(string, dictionary)