someWords = []
puts 'Enter some words!'

while true
  someWord = gets.chomp
  someWords.push someWord
  if someWord == ''
    break
  end
end

puts someWords.sort
