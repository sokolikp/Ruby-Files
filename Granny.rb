while true
    request = gets.chomp
    if request.downcase == 'bye'
      break
    elsif request.upcase == request
      puts 'EHH!? NO! NOT SINCE ' + (rand(50)+1930).to_s
    else
      puts 'HUHH!? SPEAK UP, SONNY!'
    end
end
