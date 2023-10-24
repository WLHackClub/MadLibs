madlib = File.open('madlib.txt').read

puts "Prompt:\n#{madlib}"

match_expression = /\[[A-Za-z ]+\]/
match_data = madlib.scan match_expression

match_data.each do |word|
  puts "\nenter a(n) #{word[1..-2]}:"
  madlib.sub! match_expression, gets.strip
end

puts "\nFinal Result:\n#{madlib}"
