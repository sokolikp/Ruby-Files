puts 'Enter number of bottles of beer'
beerNum = gets.chomp

while beerNum.to_i > 0
  puts beerNum.to_s + ' bottles of beer on the wall, ' + beerNum.to_s +
  ' bottles of beer! Take one down, pass it around, ' + (beerNum.to_i-1).to_s + 
  ' bottles of beer on the wall!'
  beerNum = beerNum.to_i - 1
end
