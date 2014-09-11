byeCounter = 0
while true
    request = gets.chomp
    if request == 'BYE'
      byeCounter = byeCounter + 1
      if byeCounter == 3
        break
      end
    elsif (request.upcase == request and request != nil)
      puts 'EHH!? NO! NOT SINCE ' + (rand(50)+1930).to_s
      byeCounter = 0
    else
      puts 'HUHH!? SPEAK UP, SONNY!'
      byeCounter = 0
    end
end
